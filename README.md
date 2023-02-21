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

### Description

Cleaned data that are produced by processing raw input data are placed in `data`. Specifically:

* `data`/`raw_data_import_and_preprocessing.R` is an R script containing the code for importing, preprocessing and merging the raw data input (downloadable from https://webfs.oecd.org/pisa2018/SPSS_STU_QQQ.zip and https://webfs.oecd.org/pisa2018/SPSS_SCH_QQQ.zip);

* `data`/`df_level2.csv` is the cleaned dataset produced by processing the raw input data mentioned above;

* `data`/`iso_countries.xlsx` is the excel retrieved from the Codebook (https://webfs.oecd.org/pisa2018/PISA2018_CODEBOOK.xlsx) that associates each country with its ISO code.




## Code

### Abstract

The code includes all functions necessary to implement and run the results found in Sections 3 and 4 of the paper (and S4 and S5 of Supplementary Materials).

Scripts that execute the overall workflow to carry out an analysis and generate results for the manuscript are placed in the main directory.
The folder `code` contains the core code to implement the SPGLMM and various utility/auxiliary functions.



### Description

The contents of the folder `code` are as follows:

1. `code`/`DataGeneration_class.py`: 
2. `code`/`AlgorithmComp_class.py`: class for 
3. `code`/`Auxiliary_functions.py`: auxiliary function for the SPGLMM algorithm
4. `code`/`algorithm_alpha.py`: function for SPGLMM algorithm with $\alpha$-criterion
5. `code`/`algorithm_t.py`: function for SPGLMM algorithm with t-criterion

In the main we can find:

1. `SPGLMM_case_study.ipynb`
2. `GLMM_case_study.R`
3. `Check_Poisson_distribution.ipynb`
4. `Analysis_case_study_results.ipynb`
5. `SPGLMM_simulation_study.ipynb`
6. `Analysis_simulation_study_results.ipynb`
7. `DG_SPGLMM_comparison_state_of_art.ipynb`
8. `GLMM_comparison_state_of_art.R`


The `output` directory holds objects derived from computations, including results of simulations or real data analyses. 

GLMM_case_study.R uses code/df_level2.csv in input and produces output/df_level2_pred.csv in output


### Optional Information

## Instructions for use

### Reproducibility

## Notes

