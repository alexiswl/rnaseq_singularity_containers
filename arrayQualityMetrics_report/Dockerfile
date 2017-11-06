# Download the latest R-repo
FROM r-base:latest

# Download R script
RUN curl -o AQM.R https://raw.githubusercontent.com/alexiswl/rnaseq_singularity_containers/master/arrayQualityMetrics_report/AQM.R

# Install the arrayQualityMetrics package
RUN Rscript -e "source('https://bioconductor.org/biocLite.R'); biocLite('arrayQualityMetrics')"

# Now run the AQM.R script
ENTRYPOINT ["Rscript", "./AQM.R"]
