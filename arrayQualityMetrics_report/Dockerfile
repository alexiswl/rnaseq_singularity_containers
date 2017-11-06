# Download the latest R-repo
FROM r-base:latest

# Add our AQM.R to our home directory
ADD AQM.R .

# Install the arrayQualityMetrics package
RUN Rscript -e "source('https://bioconductor.org/biocLite.R'); biocLite(arrayQualityMetrics)"

# Now run the AQM.R script
ENTRYPOINT ["Rscript", "./AQM.R"]
