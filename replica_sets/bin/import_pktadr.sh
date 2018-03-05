#! /usr/bin/env bash

usage() {
cat << EOF >&2

Import punktów adresowych w formacie JSON do bazy test i kolekcji pa.

Użycie:
    $(basename $0) FILENAMES

Przykład:
    bin/$(basename $0) datasets/json/*.json.gz

EOF
}

for plik in "$@"
do
    printf 'Import danych z pliku: %s\n' "$plik"
    # gunzip -c $plik \
    # | mongoimport --db=$nazwaBazy --collection=$nazwaKolekcji
done
