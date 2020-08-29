
[![Travis CI Build
Status](https://travis-ci.org/erblast/fda_inspections.svg?branch=master)](https://travis-ci.org/erblast/fda_inspections)

## Background

We set-up an interactive dashboard to derive insights from the FDA Clinical Inspections database. This dashboard is open access and meant to be used by clinical quality professionals.  

Authors: Timothé Ménard, Björn Koneswarakantha

Corresponding short letter can be found [here](https://www.researchgate.net/publication/340428614_What_Can_We_Learn_From_40_Years_Of_Clinical_Inspections_A_Visual_Exploration_Of_The_FDA_Clinical_Inspections_Database)

## Dashboard

https://erblast.github.io/fda_inspections/


## Exploratory analysis FDA inspections 

### Clinical Investigator Inspection List (CIIL) Database from US FDA
--> https://www.fda.gov/drugs/enforcement-activities-fda/clinical-investigator-inspection-list-ciil-database-codes

### Inspection Type Codes

- DA, Data Audit: An inspection in which the focus is on verification of study data.

- FC,  For Cause: An inspection in which the focus is on the conduct of the study by the Clinical Investigator

### Data

- Cut-off date 02-Dec-2019. Data pulled [from CLIIL database](https://www.accessdata.fda.gov/scripts/cder/CLIIL/index.cfm) on 12-Dec-2019

- Source --> https://www.accessdata.fda.gov/scripts/cder/CLIIL/index.cfm


## Docker Container

https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html

### Run Code via Snakemake
```
docker run -v "$PWD":/home/jovyan/work erblast/jup_snakemake:latest snakemake -F
```

### Shell
```
docker run -it --rm -v "$PWD":/home/jovyan/work erblast/jup_snakemake:latest /bin/bash
```

### Jupyter

with password: 123

```
docker run -p 8888:8888 -v "$PWD":/home/jovyan/work -e JUPYTER_TOKEN=123 erblast/jup_snakemake:latest
```
