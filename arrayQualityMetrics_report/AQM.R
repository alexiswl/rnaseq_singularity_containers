#!/usr/bin/env R

# Requires .rData file as input
# This .rData file needs
# 1. countData - rownames as gene ids, colnames as samples
# 2. design - rownames as samples, and single column - condition
# 3. reporttitle - String representing titlename for the report.

# Get arguments
args <- commandArgs(trailingOnly=TRUE)

# Need to be in the order: input-output-title
rdata_file = args[1]

load(file=rdata_file)

# Import the ArrayQualityMetrics library
library("arrayQualityMetrics")
library("DESeq2")

# Now step through the pipeline.

# Step 1: Run data through DESeq2 pipeline
dds <- DESeqDataSetFromMatrix(countData=countdata, colData=design, design=~condition)
cds <- estimateDispersions(estimateSizeFactors(dds))
vsd <- varianceStabilizingTransformation(cds, blind=T)

# Step 2: Output the array quality metrics to file
arrayQualityMetrics(ExpressionSet(assay(vsd)),
                    outdir = outdir, reporttitle=reporttitle,
                    intgroup = "condition", force=T)