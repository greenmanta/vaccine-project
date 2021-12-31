#1 install package
install.packages("devtools")
devtools::install_git
hub("leonjessen/PepTools")

#Note (install with this one)
remotes::install_github("leonjessen/PepTools", INSTALL_opts=c("--no-multiarch"))

#d2 (modified)
remotes::install_github("omarwagih/ggseqlogo",INSTALL_opts=c("--no-multiarch"))

library(keras)
library(tidyverse)
library(PepTools)
library(janitor)
set.seed(1458) 
