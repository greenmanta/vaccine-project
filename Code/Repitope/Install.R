


#Note (install with this one)
remotes::install_github("masato-ogishi/Repitope", INSTALL_opts=c("--no-multiarch"))



if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install("Biostrings")
BiocManager::install("msa")
BiocManager::install("S4Vectors")
BiocManager::install("GenomeInfoDbData")
devtools::install_github("masato-ogishi/Repitope", force=T)
ins

