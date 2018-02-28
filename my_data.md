## Dane wzrocowe
[Punkty adresowe z terenu Polski w formacie geojson](https://drive.google.com/file/d/1c76CsnoARrlPwRoOsInwhvXnYVPWgiZx/view?usp=sharing)

Import za pomocą mongoimport
```bash
mongoimport --db nazwaBazy --collection nazwaKolekcji --jsonArray --file nazwaPliku.geojson
```

## Moje dane

Każdy powinien mieć swój unikalny zbiór danych.
Tutaj wpisujemy link do danych z informacją co dane zawierają.

1. A. Porębski. [Trees in San Francisco](https://data.sfgov.org/City-Infrastructure/Street-Tree-List/tkzw-k3nq).
List of dpw maintained street trees including: Planting date, species, and location

2. A. Puchalski [Amazon Kindle reviews](https://www.kaggle.com/bharadwaj6/kindle-reviews/data)
5-core dataset of product reviews from Amazon Kindle Store category from May 1996 - July 2014. Contains total of 982619 entries. Each reviewer has at least 5 reviews and each product has at least 5 reviews in this dataset.