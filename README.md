# Stat316-Final-Project
Final project for Advanced Statistical Modelling. My good friend and classmate Donovan Roddy and I worked to investigate what associations may exist between adolescent academic performance, such as high school or college GPA and standardized test scores, and sexual behaviors throughout young adulthood and later in life. To address these questions, we performed multilevel Poisson regression on data from the National Longitudinal Study of Youth from 1997 (NSRL97).

## Deliverable

The sole deliverable for this project is _Technical_Report.Rmd_, our final report. 

## Documents Summary

_Project_EDA.Rmd_ is where most of our experimentation with this EDA has been performed. 

_Preliminary_Draft.Rmd_ is the draft of our preliminary report. This contains an overview of our project, variable names and descriptions, and some of our early EDA graphs. 

_MB_EDA.Rmd_ is a secondary EDA document, to avoid issues of concurrent saving. 

The models (.rds) were saved into the folder to save time, and to ensure consistency. The CSVs were similarly saved in the folder to ensure consistency between .rmd files.

## CSVs Summary

The original data source is _Stat_Theory_Data_QName.csv_. This was downloaded from nslinfo.org, and contains all of the data we are currently using, albeit in a very messy format. 

Along with this csv is _Stat_Theory_Data_GName.R._, and R file which accompanied the data on nslinfo.org. Running this R file renamed a lot of the variables, and accomplished some of the more tedious cleaning tasks, yielding dataset "new_data". 

_Stat_Project_Code_Cleaning.Rmd_ read in "new_data", and renamed it to "nls_data_question" (to protect overwriting), and then cleaned this dataset to produce "nls_clean". Both "nls_data_question" and "nls_clean" were written into CSVs, as my partner was struggling to get the code to run (his computer could not read in one particular csv, but could read in others). This also is an added layer of security in case something was messed up. 

The datasets and concomitant CSVs move, in order of cleanliness, from "Stat_Theory_Data_QName.csv" (freshly downloaded) to "nls_data_questions.csv" (cleaned by downloaded .R file), to "nls_clean.csv" (cleaned by me), to "nls_long.csv" (pivoted longer), to the final document and deliverable, _Technical_Report.Rmd_.

Stat_Theory_Data_QName.csv is read in as new_data, but the other datasets match their csv names. 

## Packages
This research was conducted in RStudio, using packages _tidyverse_, _mosaic_, _kableExtra_, _sjPlot_, _lme4_, _tinytex_, and _gridExtra_.

## Author Contributions

Donovan and I were both deeply involved in every part of the assignment, but I took the lead on cleaning the data, and Donovan did a little bit more of the initial modelling. I modelled and wrote up most of Section 3.1 (Sex frequency), while Donovan did Section 3.2 (Number of sexual partners). 

There was minimal use of generative AI in the modelling and code-writing parts of this assingment, but no AI was used for the writing of the report. 
