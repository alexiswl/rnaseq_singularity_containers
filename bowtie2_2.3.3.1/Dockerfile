# Base Image
FROM alexiswl/containers:latest

# Metadata
LABEL base.image="biocontainers:latest"
LABEL version="1"
LABEL software="bowtie2"
LABEL software.version="2.3.3.1"
LABEL description="Bowtie 2 is an ultrafast and memory-efficient tool for aligning sequencing reads to long reference sequences"
LABEL website="http://bowtie-bio.sourceforge.net/bowtie2/index.shtml"
LABEL documentation="http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml"
LABEL license="GPLv3"
LABEL tags="Genomics"

# Maintainer
MAINTAINER Alexis Lucattini <alexis.lucattini@agrf.org.au>

RUN conda install -c conda-forge perl=5.22.0
RUN conda install -c bioconda bowtie2=2.3.3.1
ENV LANG=C

WORKDIR /data/

ENTRYPOINT ["bowtie2"]
