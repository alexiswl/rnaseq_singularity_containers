# Base Image
FROM biocontainers/biocontainers:latest

# Metadata
LABEL base.image="biocontainers:latest"
LABEL version="1"
LABEL software="RNA-SeQC"
LABEL software.version="1.1.8"
LABEL description="RNA-SeQC is a java program which computes a series of quality control metrics for RNA-seq data."
LABEL website="http://archive.broadinstitute.org/cancer/cga/rna-seqc"
LABEL documentation="http://archive.broadinstitute.org/cancer/cga/rnaseqc_run"
LABEL license="GPLv3"
LABEL tags="Genomics"

# Maintainer
MAINTAINER Alexis Lucattini <alexis.lucattini@agrf.org.au>

RUN conda install -c conda-forge perl=5.22.0
RUN conda install -c bioconda bwa=0.7.16
RUN conda install -c bioconda rna-seqc=1.1.8
ENV LANG=C

WORKDIR /data/

ENTRYPOINT ["rna-seqc"]
