## Exploratory analysis FDA inspections 

### Clinical Investigator Inspection List (CIIL) Database from US FDA
--> https://www.fda.gov/drugs/enforcement-activities-fda/clinical-investigator-inspection-list-ciil-database-codes

### Inspection Type Codes

- DA, Data Audit: An inspection in which the focus is on verification of study data.

- FC,  For Cause: An inspection in which the focus is on the conduct of the study by the Clinical Investigator

### Data

- Cut-off date 26-Jun-2019. Data pulled [from CLIIL database](https://www.accessdata.fda.gov/scripts/cder/CLIIL/index.cfm) on 19-Aug-2019

- Source --> https://www.accessdata.fda.gov/scripts/cder/CLIIL/index.cfm


## Docker Container

https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html

### Snakemake
```
docker run -it --rm -v "$PWD":/home/jovyan/work erblast/jup_snakemake:latest snakemake
```

### Shell
```
docker run -it --rm -v "$PWD":/home/jovyan/work erblast/jup_snakemake:latest /bin/bash
```

### Jupyter
```
docker run -p 8888:8888 -v "$PWD":/home/jovyan/work erblast/jup_snakemake:latest
```