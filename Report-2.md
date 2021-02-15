Report-2
================
Madhumita Mukherjee
15/02/2021

## Introduction

This is a report on 15 April 1912, the unsinkable Titanic ship sank and
killed 1502 passengers out of 2224.The original data obtained from
(<https://web.stanford.edu/class/archive/cs/cs109/cs109.1166/stuff/titanic.csv>).

We are going to use the following libraries:

``` r
library(tidyverse)
library(dplyr)
library(dslabs)
```

and load the data we already wrangled:

``` r
load("rda/Titanic.rda")
```

## QQ-Plot of passenger’s age

The QQ-plot of passenger’s age has been done with an identity line using
*geom\_abline()*. The Filtering operation has been performed for the
unspecified data of the passenger’s age.

![](Report-2_files/figure-gfm/QQ-plot%20of%20age-1.png)<!-- -->
