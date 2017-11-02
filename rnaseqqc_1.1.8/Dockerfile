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

RUN conda intsall -c bioconda bwa
RUN conda install -c bioconda rna-seqc=1.1.8

WORKDIR /data/

ENTRYPOINT ["rna-seqc"]