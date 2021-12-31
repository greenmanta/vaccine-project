
PEPTIDES %>% head(10)

PEPTIDES %>% pssm_freqs %>% .[1:9,1:10]
PEPTIDES %>% pssm_freqs %>% pssm_bits %>% .[1:9,1:10]
PEPTIDES %>% pssm_freqs %>% pssm_bits %>% t %>% ggseqlogo(method="custom")
PEPTIDES %>% pep_encode %>% dim
PEPTIDES %>% pep_plot_images
