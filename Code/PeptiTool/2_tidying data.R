## Function to tidy iedb peptide data
## Takes in file_path to csv file and MHC I allotype name label and number
tidy_peptides <- function(file_path,allotype,allotype_num) {
  
  tidy_dat <- read_csv(file_path, skip = 1, col_types = cols()) %>% 
    # Filter peptide rows
    filter(!str_detect(Description,"[lX]") & 
             `Object Type` == "Linear peptide") %>% 
    # Add new variables
    mutate(length = str_count(Description), # Add length
           label_chr = allotype, # Label allotype
           label_num = allotype_num, # Add integer for allotype 
           # Remove any extras strings
           peptide = str_replace_all(Description,"\\(.*?\\)", "")) %>% 
    # Filter only 9mers
    filter(length == 9 ) %>% 
    # Keep only the peptide and labels
    select(peptide, label_chr, label_num) 
  
  return(tidy_dat)
}


