Clustering Hierarchies via a Semi-Parametric Generalized Linear Mixed Model: a statistical significance-based approach
================

# Authors Contributions Checklist Form

## Data

### Abstract

The case study considered in this paper is implemented using a subset of the OECD'S PISA survay data of 2018 to cluster countries standing on their innumeracy levels, i.e., the levels of mathematical illiteracy. 
The OECD’s PISA measures 15-year-olds’ knowledge and skills in reading, mathematics, and science to handle real-life challenges. 
Our focus is on mathematical performance, which evaluates students’ ability to apply math in various contexts. 
The global indicators for the United Nations Sustainable Development Goals identify a minimum Level of Proficiency - computed on the obtained scores - 
that all children should acquire by the end of secondary education: students below this level are considered low-achieving students. 
We aim at investigating the effect the countries involved in the OECD’s PISA 2018 survey have on the rate of low-achieving students in mathematics.
The data are preprocessed as described in Section 3.1 of the paper.

### Availability

Raw data are publicly available at https://www.oecd.org/pisa/data/2018database/.

### Simulated Data

Code to generate the simulated data and (if relevant) and facsimile data provided in place of confidential real data might also be placed here. 

### Description

Cleaned data that are produced by processing raw input data are placed in `data`. Specifically:
* `raw_data_import_and_preprocessing.R` is an R script containing the code for importing, preprocessing and merging the raw data input (downloadable from https://webfs.oecd.org/pisa2018/SPSS_STU_QQQ.zip and https://webfs.oecd.org/pisa2018/SPSS_SCH_QQQ.zip);

* `df_level2.csv` is the cleaned dataset produced by processing the raw input data mentioned above;

* `iso_countries.xlsx` is the excel retrieved from the Codebook (https://webfs.oecd.org/pisa2018/PISA2018_CODEBOOK.xlsx) that associates each country with its ISO code.




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
