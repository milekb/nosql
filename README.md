# Technologie NoSQL

Terminy akceptacji zaproszenia do GitHub classroom oraz
rozliczania się z projektów na zaliczenie i egzamin.

| Projekt          | Deadline   |
|------------------|------------|
| GitHub Classroom | 01.03.2018 |
| [Moje dane](labs.adoc) | 07.03.2018 |
| Zaliczenie       | 10.04.2018 |
| Egzamin          | 22.05.2018 |

Projekty na zaliczenie i egzamin oddane do tygodnia po wyznaczonym terminie –
ocena obniżona; oddane później – egzamin poprawkowy.


## :new: Projekt „Moje dane”

Niestety nie mogę zaliczyć zdecydowanej większości projektów, bo
autorzy nie zastosowali się wymagań opisanych w pliku [labs.adoc](labs.adoc).
Dlatego w weekend w pliku umieszczę kilka wskazówek, które powinny ułatwić
napisanie skryptów, wykonanie rachunków i tabelki.


## :new: Prezentacja projektu
| Imię i Nazwisko          | Data   |
|------------------|------------|
| P. Jaszczyszyn, A. Stefański | 11.04.2018 |

## Materiały do wykładów

Opracowane notatki z wykładu S. Tuszyńskiego
„[Kontenery Docker na komputerach w laboratoriach](https://github.com/egzamin/docker)”.

Zaczynamy:

1. [The MongoDB 3.6 Manual](https://docs.mongodb.com/manual/contents/):
    * [Introduction to MongoDB](https://docs.mongodb.com/manual/introduction/)
1. [The mongo Shell](https://docs.mongodb.com/manual/mongo/)
1. [MongoDB CRUD Operations](https://docs.mongodb.com/manual/crud/)
1. [Indexes](https://docs.mongodb.com/manual/indexes/):
    * [Explain Results](https://docs.mongodb.com/manual/reference/explain-results/)
1. [Expressive Query Language in MongoDB 3.6](https://dzone.com/articles/expressive-query-language-in-mongodb-36-2).
1. MongoDB Tutorial Series –
  [How to Investigate MongoDB Query Performance](https://studio3t.com/whats-new/mongodb-query-performance/).
1. [Aggregation](https://docs.mongodb.com/manual/core/aggregation-pipeline/).
    * [Aggregation Pipeline Stages](https://docs.mongodb.com/manual/reference/operator/aggregation-pipeline/);
      zob. $bucket, $facet, $graphLookup.
    * [Aggregation Pipeline Operators](https://docs.mongodb.com/manual/reference/operator/aggregation/)
1. [Replication](https://docs.mongodb.com/manual/replication/)
    * [Change Stream Examples](https://docs.mongodb.com/manual/tutorial/change-streams-example/)
1. [Data Models](https://docs.mongodb.com/manual/data-modeling/)
1. Drivers Manuals:
    * [Ruby](https://docs.mongodb.com/ruby-driver/master/quick-start)
    * [NodeJS](http://mongodb.github.io/node-mongodb-native/2.2/quick-start/quick-start)


## Narzędzia

1. [jq](https://stedolan.github.io/jq) – a lightweight and flexible command-line JSON processor.
1. [VisiData](https://github.com/saulpw/visidata) – a terminal spreadsheet multitool for discovering and arranging data.
1. [CSVKit](https://csvkit.readthedocs.io/en/1.0.2) – a suite of command-line tools for converting to and working with CSV.


## Projekt na zaliczenie

Aplikacja, zawierająca kilka skryptów, uruchamianych z linii poleceń korzystająca
z [MongoDB Drivers](https://docs.mongodb.com/ecosystem/drivers/) dla jednego
z języków: C, C++, C#, Java, Node.js, Perl, Python, Scala lub Ruby.

Przykład takiej aplikacji „[Sample app for the MongoDB Ruby driver](https://github.com/steveren/ruby-driver-sample-app)”
([mój fork](https://github.com/nosql/ruby-driver-sample-app)).

Plik **README.{md,adoc,rst,html}** (w jednym z wymienionych notacji)
powinien zawierać dokumentację projektu, imię i nazwisko autora.
Powinien on zawierać grafiki, mapki, linki do stron HTML itp.
wygenerowane za pomocą skryptów aplikacji, powinny być utworzone **indeksy**,
oczywiście o ile mają one sens.

Dane należy zapisać w **replica set**;
zob. [Convert a Standalone to a Replica Set](https://docs.mongodb.com/manual/tutorial/convert-standalone-to-replica-set/).

:new: W repozytoriach nie powinno być dużych plików.
Całe repozytorium nie może zajmować więcej niż 10-20 MiB. Po wykonaniu
polecenia
```sh
git sizer --verbose
```
na terminalu zostanie wypisana nie tylko wielkość repozytorium,
ale wiele innych użytecznych danych.

Dlatego na końcu pliku README proszę wkleić to co wypisze polecenie
`git sizer` (zob. linki pod koniec tego pliku).


## Projekty na egzamin

[Agregacje](https://docs.mongodb.com/manual/aggregation/) korzystające z:

* [Aggregation Pipeline](https://docs.mongodb.com/manual/aggregation/#aggregation-pipeline) i [Map-Reduce](https://docs.mongodb.com/manual/aggregation/#map-reduce)

Obliczenia należy przeprowadzić w kontenerach Docker.

Do uruchamiania agregacji należy użyć skryptów napisanych w Bash
lub jednym z języków Node.js, Python lub Ruby. Wyniki agregacji można
przekształcać za pomocą poleceń powłoki Bash, programu [jq](https://stedolan.github.io/jq/),
[R](https://www.r-project.org) lub innych programów zainstalowanych.

Plik **README.{md,adoc,html}** (w jednym z wymienionych foramtów)
powinien zawierać dokumentację projektu oraz imiona i nazwiska autorów.
Wyniki agregacji należy zilustrować grafikami, mapkami, stronami HTML
opisem itp.

Praca w zespołach: przeczytać [*Fork and Pull Request Workflow*](https://github.com/susam/gitpr).


## Simple Rules for Reproducible Computations

Provide public access to scripts, runs, and results:

1. Version control all custom scripts:
    - avoid writing code
    - **write thin scripts** and use standard tools and use standard UNIX
      commands to chain things together.
1. Avoid manual data manipulation steps:
    - use a build system, for example [**make**](http://bost.ocks.org/mike/make/),
      and have all results produced automatically by build targets
    - if it’s not automated, it’s not part of the project,
      i.e. have an idea for a graph or an analysis?
      automate its generation
1. Use a markup, for example
   [**Markdown**](http://daringfireball.net/projects/markdown/syntax), or
   [**AsciiDoctor**](http://asciidoctor.org)
   to create reports for analysis and presentation output products.

Plus two more rules:

1. Record all intermediate results, when possible in standardized formats.
1. Connect textual statements to underlying results.

Uwaga: Jeśli to ma sens, to dane należy uporządkować i w bazie danych zapisać
**tidy dataset**. Oczywiście, wcześniej należy przeczytać ten artykuł:
[Hadley Wickham, *Tidy data*](https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf)
w którym wyjaśniono co to oznacza.


## Praca z gigabajtowymi plikami danych

Przykład: Spakowany plik _RC_2015-01.bz2_ zajmuje na dysku 5_452_413_560 B,
czyli ok. 5.5 GB. Każda linijka pliku to jeden obiekt JSON, komentarz
z serwisu Reddit, z tekstem komentarza, autorem, itd.
Wszystkich komentarzy/JSON-ów powinno być 53_851_542.

```bash
bunzip2 --stdout RC_2015-01.bz2 | head -1 | jq .
time bunzip2 --stdout RC_2015-01.bz2 | rl --count 1000 > RC_2015-01_1000.json
# real   ∞ s
# user   ∞ s
# sys	0m12 s
time bunzip2 -c RC_2015-01.bz2 | mongoimport --drop --host 127.0.0.1 -d test -c reddit
# 2015-10-09T19:49:35.698+0200	test.reddit	29.5 GB
# 2015-10-09T19:49:35.698+0200	imported 53851542 documents

# real  38m40.629s
# user  56m37.200s
# sys   1m17.074s
```

[Gnome System Monitor](https://www.omgubuntu.co.uk/2016/04/gnome-system-monitor-redesign-planned).

![RC mongoimport](images/RC_mongoimport_WiredTiger.png)

Plik _restaurants.json_ zawiera informacje o restauracjach w Nowym Jorku.

```bash
curl -s https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/neighborhoods.json \
| gzip --stdout  > restaurants.json.gz

#                          use   shuf -n 1  on Linux
gunzip -c restaurants.json.gz | gshuf -n 1  # macOS, brew install coreutils (gshuf)
gunzip -c restaurants.json.gz | rl    -c 1  # macOS, brew install randomize-lines
```

IMPORTANT: Unikamy zapisywania plików na dysku. Zwłaszcza dużych plików!

```bash
curl -s 'https://inf.ug.edu.pl/plan/?format=json' \
| mongoimport --drop --jsonArray -c plan

curl -s 'https://inf.ug.edu.pl/plan/?format=json' \
| jq -c '.[]' \
| mongoimport --drop -c plan

curl -s https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/restaurants.json \
| gshuf -n 100 \
| mongoimport --drop -c restaurants100

curl -s https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/neighborhoods.json \
| mongoimport --drop -c restaurants
```


## Git Sizer

* [git-sizer](https://github.com/github/git-sizer) –
  compute various size metrics for a Git repository, flagging those that might cause problems.
* [BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner) –
  removes large or troublesome blobs like git-filter-branch does, but faster.


## Analyzing Query Performance

* [Database Profiler](https://docs.mongodb.com/manual/tutorial/manage-the-database-profiler)
* [Analyze Query Performance](https://docs.mongodb.com/manual/tutorial/analyze-query-plan/).
* [Explain Results](https://docs.mongodb.com/manual/reference/explain-results/)

```sh
db.restaurants.find( {name: /Feast/} ).explain("executionStats").executionStats
db.restaurants.explain("executionStats").find( {name: /Feast/} ).count()

db.restaurants.find( {name: /Feast/} ).explain("executionStats").serverInfo
```

Do *mniej* dokładnych pomiarów można użyć polecenia _/usr/bin/time_.
W ostateczności można użyć polecenia wbudowanego Bash _time_.
