install.packages('BiocManager', repos='https://cran.rstudio.com')

message("Installing from the 'RELEASE_3_11' branch of Bioconductor")

BiocManager::install(version='3.11', update=TRUE, ask=FALSE)

BiocManager::install('devtools')

