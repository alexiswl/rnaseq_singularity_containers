# Download the latest R-repo
FROM r-base:latest

# Update cahce
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

# Aptitude required for RCurl
RUN apt-get install aptitude -y

# Install apt utils


# Install curl
RUN apt-get install curl -y

# Openssl required
RUN apt-get install libssl -y

# Libxml2 required
RUN apt-get install libxml2 -y

# Cairo required
RUN apt-get install libcairo2 -y

# 'docker' is the user in r-base
# Change into user directory.
WORKDIR /home/docker

# Download R script
RUN curl -o AQM.R https://raw.githubusercontent.com/alexiswl/rnaseq_singularity_containers/master/arrayQualityMetrics_report/AQM.R

# Install the arrayQualityMetrics package
RUN Rscript -e "source('https://bioconductor.org/biocLite.R'); biocLite('arrayQualityMetrics')"

# Now run the AQM.R script
ENTRYPOINT ["Rscript", "/home/docker/AQM.R"]
