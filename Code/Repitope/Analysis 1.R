options(java.parameters="-Xmx60G")  ## allow JAVA to use large memory space
library(tidyverse)
library(data.table)
library(Repitope)

MHCI_Human <- Epitope_Import(
  system.file("IEDB_Assay_MHCI_Human.csv.gz", package="Repitope"),
  OtherFileNames=list(
    system.file("Calis1.csv", package="Repitope"),    ## Supplementary dataset from Calis et al., 2013.
    system.file("Calis2.csv", package="Repitope"),    ## Supplementary dataset from Calis et al., 2013.
    system.file("Chowell.csv", package="Repitope"),   ## Supplementary dataset from Chowell et al., 2015.
    system.file("EPIMHC.csv", package="Repitope"),    ## ClassI, Human, Annotated with T-cell activity
    system.file("HCV.csv", package="Repitope"),       ## LANL HCV epitope dataset.
    system.file("HIV.csv", package="Repitope"),       ## LANL HIV epitope dataset. ("best-defined")
    system.file("IMMA2.csv", package="Repitope"),     ## POPISK paper (Tung et al., 2011.), http://140.113.239.45/POPISK/download.php
    system.file("MHCBN.csv", package="Repitope"),     ## ClassI, Human, Annotated with T-cell activity
    system.file("TANTIGEN.csv", package="Repitope")   ## TANTIGEN T cell epitope dataset; entries annotated by in vitro or in vivo experiments are retained (but not MS experiments)
  ),
  peptideLengthSet=8:11
)


MHCII_Human <- Epitope_Import(
  system.file("IEDB_Assay_MHCII_Human.csv.gz", package="Repitope"),
  peptideLengthSet=11:30
)


