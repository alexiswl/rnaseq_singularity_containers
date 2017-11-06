#!/usr/bin/env R

# Get arguments
args <- commandArgs(trailingOnly=TRUE)

# Need to be in the order: input-output-title
countdata = args[1]
output_dir = args[2]
title = args[3]

# Import the ArrayQualityMetrics library
library("arrayQualityMetrics")

# Now step through the pipeline.

# Step 1: prepare data
preparedData = prepdata(expressionset = read.table(countdata),
                        intgroup=c(),
                        do.logtransform=TRUE)

# Step 2: Generate boxplot and density plot
bo = aqm.boxplot(preparedData)
de = aqm.density(preparedData)
qm = list("Boxplot"=bo, "Density"=de)

# Step 3: Render the report
aqm.writereport(modules=qm, reporttitle=title, outdir=output_dir,
                arrayTable = pData(countdata))
