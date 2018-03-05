#! /usr/bin/env bash

usage() {
cat << EOF >&2

Import punktów adresowych w formacie JSON do bazy test i kolekcji pa.

Użycie:
    $(basename $0) FILENAMES

Przykład:
    bin/$(basename $0) datasets/pktadr/*.json.gz

EOF
}

if [ $# -eq 0 ]; then
  usage
  exit 0
fi

for plik in "$@"
do
  printf 'Import danych z pliku: %s\n' "$plik"
  gunzip -c $plik \
  jq --compact-output '{
      place: .properties.miejscowosc,
      street: .properties.ulica,
      zipcode: .properties.kodPocztowy,
      nr: .properties.numerPorzadkowy,
      status: .properties.status,
      geometry,
      adm_unit: .properties.jednostkaAdmnistracyjna
    }' \
  | mongoimport --host carbon/localhost:27001,localhost:27002,localhost:27003 \
        --drop --db=test --collection=pa
done
