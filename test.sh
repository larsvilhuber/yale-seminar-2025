# 
# Run Rscript to renv::restore the renv environment
Rscript -e "renv::restore()"

quarto render  index.qmd --output-dir _test