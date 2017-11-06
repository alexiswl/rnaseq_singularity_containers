# Download the latest R-repo
FROM r-base:latest

# Aptitude required for RCurl
RUN apt-get install aptitude

# Install curl
RUN apt-get update
RUN apt-get install curl

# Openssl required
RUN apt-get install libssl-dev

# Libxml2 required
RUN apt-get install libxml2-dev

# Cairo required
RUN apt-get install libcairo2-dev

# 'docker' is the user in r-base
# Change into user directory.
WORKDIR /home/docker

# Download R script
RUN curl -o AQM.R https://raw.githubusercontent.com/alexiswl/rnaseq_singularity_containers/master/arrayQualityMetrics_report/AQM.R

# Install the arrayQualityMetrics package
RUN Rscript -e "source('https://bioconductor.org/biocLite.R'); biocLite('arrayQualityMetrics')"

# Now run the AQM.R script
ENTRYPOINT ["Rscript", "/home/docker/AQM.R"]
