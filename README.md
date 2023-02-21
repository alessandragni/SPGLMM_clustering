Clustering Hierarchies via a Semi-Parametric Generalized Linear Mixed Model: a statistical significance-based approach
================

# Authors Contributions Checklist Form

## Data

This directory would generally contain the real data files (or facsimile versions of them in place of confidential data) and simulated data files.

Cleaned data that are produced by processing raw input data might also be placed here.

Code to generate the simulated data and (if relevant) and facsimile data provided in place of confidential real data might also be placed here. 

Code for data cleaning could potentially also be placed here rather than in `code`.


Real data files (for the case study):

* `raw_data_import_and_preprocessing.R` is an R script containing the code for importing, preprocessing and merging the raw data input (downloadable from https://webfs.oecd.org/pisa2018/SPSS_STU_QQQ.zip and https://webfs.oecd.org/pisa2018/SPSS_SCH_QQQ.zip);

* `df_level2.csv` is the cleaned dataset produced by processing the raw input data mentioned above;

* `iso_countries.xlsx`


Simulated data files (for the simulation study):

### Abstract

### Availability

### Simulated data

### Description


## Code

### Abstract

This directory would generally contain source code files that contain the core code to implement the method and various utility/auxiliary functions.

Scripts/code files that execute the overall workflow to carry out an analysis and generate results for the manuscript might be placed in the main directory.

### Description

### Optional Information

## Instructions for use

### Reproducibility

## Notes

1.  A `README.md` file - This file gives a short description of the
    paper and an overview of how to carry out the analyses presented in their manuscript.
2.  A `manuscript` directory - This directory will generally hold the source files
    (often LaTeX or Rmd) for the manuscript and any files directly related to the
    generation of the manuscript, including figure files.
3.  A `data` directory - This directory will generally hold the real data files 
    (or facsimile versions of them in place of confidential data) and simulated data files.
    See `data/README.md` for more details. 
4.  A `code` directory - This directory will generally hold 
    source code files that contain the core code to implement the method and various utility/auxiliary functions.
5.  An `output` directory - This directory will generally hold objects derived
    from computations, including results of simulations or real data analyses. See `output/README.md` for more details.





## MY THINGS:

* GLMM_case_study.R uses code/df_level2.csv in input and produces output/df_level2_pred.csv in output
