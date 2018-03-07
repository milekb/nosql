## Dane wzorcowe

Zbiór punktów adresowych opracował P. Jaszczyszyn,
a polskie miejsowości A. Stefański.

Dane będą udostępniane na zajęciach w laboratorium.

<!--
  https://drive.google.com/file/d/1c76CsnoARrlPwRoOsInwhvXnYVPWgiZx/view?usp=sharing
  https://drive.google.com/open?id=1poYWhc7618s_0-qOm6e3k9xH542HCp5Q
-->

### Punkty adresowe z terenu Polski w formacie JSON

Dane importujemy do kolekcji _pa_ w bazie _test_:
```bash
mongoimport --db test --collection pa --file nazwa_pliku.json
```

### Polskie miejsowości w formacie JSON

```
? mongoimport --db test --collection miejscowosci --file miejscowosci.geojson --jsonArray
```


## Moje dane

**Uwaga:** Każdy powinien mieć swój unikalny zbiór danych.

1. D. Kalinowski. [Fire Department Calls for Service](https://data.sfgov.org/Public-Safety/Fire-Department-Calls-for-Service/nuek-vuh3).
Fire Calls-For-Service includes all fire units responses to calls since December 17, 2015. 1.6 GB, 4.59M rows and growing with daily updates.

1. M. Krakowiak. [311 Cases](https://data.sfgov.org/City-Infrastructure/311-Cases/vw6y-z8j6) List of cases in San Francisco. The case data represents each case submitted via one of the many SF311 channels and the general characteristics and disposition of the case.

1. D. Kotowicz. [USA Airport Dataset](https://www.kaggle.com/flashgordon/usa-airport-dataset/version/2#).
This dataset is a record of 3.5 Million+ US Domestic Flights from 1990 to 2009.

1. K. Lubiejewski. [Vehicle, Snowmobile, and Boat Registrations](https://data.ny.gov/Transportation/Vehicle-Snowmobile-and-Boat-Registrations/w4pv-hbkt).
This dataset contains the file of vehicle, snowmobile and boat registrations in NYS. Registrations expired more than 2 years are excluded. Records that have a scofflaw, revocation and/or suspension are included with indicators specifying those kinds of records.

1. K. Narożnik. [Local Data for Better Health](https://catalog.data.gov/dataset/500-cities-local-data-for-better-health-b32fd).
This dataset includes 2013, 2014 model-based small area estimates for 27 measures of chronic disease related to unhealthy behaviors, health outcomes, and use of preventive services. Data were provided by the Centers for Disease Control and Prevention (CDC), Division of Population Health, Epidemiology and Surveillance Branch.

1. A. Novik. [Death in the United States 2015](https://www.kaggle.com/cdc/mortality/data).
This dataset is a collection of data about deceased people in the US in 2015.

1. A. Porębski. [Trees in San Francisco](https://data.sfgov.org/City-Infrastructure/Street-Tree-List/tkzw-k3nq).
List of street trees in San Francisco including: Planting date, species, and location.
[Addresses from Germany](http://results.openaddresses.io/). List of freely available addresses from Germany. (lon, lat, street, city, district, region, postcode)

1. A. Puchalski. [Amazon Kindle reviews](https://www.kaggle.com/bharadwaj6/kindle-reviews/data)
5-core dataset of product reviews from Amazon Kindle Store category from May 1996 - July 2014. Contains total of 982619 entries. Each reviewer has at least 5 reviews and each product has at least 5 reviews in this dataset.

1. J. Warzocha. [London Crime Data, 2008-2016](https://www.kaggle.com/jboysen/london-crime/data)
Crime Counts, by Borough, Category, and Month.

1. R. Lewandowski. [Police Department Incidents](https://data.sfgov.org/Public-Safety/Police-Department-Incidents/tmnf-yvry).
Incidents derived from SFPD Crime Incident Reporting system updated daily, showing data from 1/1/2003 up until two weeks ago from current date.

1. A. Tejszerska. [National Statistics Postcode Lookup UK](https://data.gov.uk/dataset/national-statistics-postcode-lookup-uk). This dataset contains the National Statistics Postcode Lookup (NSPL) for the United Kingdom. The NSPL relates current postcodes to a range of current statutory administrative, electoral, health and other statistical geographies via ‘best-fit’ allocation from the 2011 Census output areas.

1. K. Wyrzykowski. [Asia and Oceania](https://www.kaggle.com/openaddresses/openaddresses-asia-and-oceania). OpenAddresses's goal is to connect the digital and physical worlds by sharing geographic coordinates, street names, house numbers and postal codes.

1. W. Łojkowski. [NFL Football Player Stats](https://www.kaggle.com/zynicide/nfl-football-player-stats).
This is the most complete public source of NFL player stats available online. It scraped every NFL player in database going back to the 1940s. That's over 25,000 players who have played over 1,000,000 football games.

1. J. Puchalski. [Dota 2 Matches](https://www.kaggle.com/devinanzelmo/dota-2-matches).
This dataset contains 50000 ranked ladder matches from the Dota 2 data dump created by Opendota. It was inspired by the Dota 2 Matches data published here by Joe Ramir. The aim of this dataset is to enable the exploration of player behavior, skill estimation, or anything you find interesting. I interested in chat data which contains all chat for the 50k matches. There is plenty of profanity, and good natured trolling.

1. S. Piekarek. [Library Collection Inventory](https://www.kaggle.com/seattle-public-library/seattle-library-checkout-records) This dataset includes a log of all physical item checkouts from Seattle Public Library.

1. M. Gierszewski. [Police Department Calls for Service](https://data.sfgov.org/Public-Safety/Police-Department-Calls-for-Service/hz9m-tj6z).
Calls for service regarding criminal activity (unverified), from SFPD. Data covers the period 03/31/2016-present(Last updated
    March 6, 2018).
    
1. A. Półgęsek. [Iowa Liquor Sales](https://data.iowa.gov/Economy/Iowa-Liquor-Sales/m3tr-qhgy)
This dataset contains the spirits purchase information of Iowa Class “E” liquor licensees by product and date of purchase from January 1, 2012 to current.

1. A. Onych. [Medallion Vehicles - Authorized](https://catalog.data.gov/dataset/medallion-vehicles-authorized-44673)
This list contains information on the status of current medallion vehicles authorized to operate in New York City. This list is accurate to the date and time represented in the Last Date Updated and Last Time Updated fields. 

1. M. Tracki. [Classified Ads for Cars](https://www.kaggle.com/mirosval/personal-cars-classifieds/data)
Used cars for sale in Germany and Czech Republic since 2015.
