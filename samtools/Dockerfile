# Base Image
FROM biocontainers/biocontainers:latest

# Metadata
LABEL base.image="biocontainers:latest"
LABEL version="1"
LABEL software="samtools"
LABEL software.version="1.5"
LABEL description="Utilities for the Sequence Alignment/Map (SAM) format"
LABEL website="http://www.htslib.org/doc/samtools.html"
LABEL documentation="http://www.htslib.org/doc/samtools.html"
LABEL license="http://www.htslib.org/doc/samtools.html"
LABEL tags="Genomics"

# Maintainer
MAINTAINER Alexis Lucattini <alexis.lucattini@agrf.org.au>

RUN conda intsall -c bioconda samtools=1.5

WORKDIR /data/

ENTRYPOINT ["samtools"]