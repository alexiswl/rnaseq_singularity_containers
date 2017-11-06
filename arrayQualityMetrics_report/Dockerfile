# Download the latest R-repo
FROM r-base:latest

# Install curl
RUN apt-get update
RUN apt-get install curl

# 'docker' is the user in r-base
# Change into user directory.
WORKDIR /home/docker

# Download R script
RUN curl -o AQM.R https://raw.githubusercontent.com/alexiswl/rnaseq_singularity_containers/master/arrayQualityMetrics_report/AQM.R

# Install the arrayQualityMetrics package
RUN Rscript -e "source('https://bioconductor.org/biocLite.R'); biocLite('arrayQualityMetrics')"

# Now run the AQM.R script
ENTRYPOINT ["Rscript", "./AQM.R"]
