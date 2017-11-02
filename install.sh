#!/bin/bash

# /path/to/singularity_folder
SINGULARITY_OUTPUT=/home/alexis/singularity

# Build docker files, grabbing each of the folders and removing './' from the start.
find . -mindepth 1 -maxdepth 1 -type d -not -name ".*" | sed 's/\.\///g' | xargs -n1 -I{} sudo docker build {} -t {}

# Find the same folder name and run docker2singularity.
# You do not have to download docker2singularity to do so.
find . -mindepth 1 -maxdepth 1 -type d -not -name ".*" | sed 's/\.\///g' | xargs -n1 -I{} sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v ${SINGULARITY_OUTPUT}/{}:/output --privileged -t --rm singularityware/docker2singularity {}
