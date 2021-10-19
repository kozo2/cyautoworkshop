# Cytoscape automation with RCy3

This repository provides biologically relevant analyses using the [RCy3](https://bioconductor.org/packages/RCy3/) package.
You can run R analyses locally in the provided Docker container, or on the Cloud for free.

## Running on the Cloud for free

A machine with all dependencies, code from this repository, and Jupyterlab (with R) is available at http://app.orchestra.cancerdatasci.org/ (search for the Cytoscape). You can use these machines for up to 8 hours at a time.

## Running locally using Docker

### Requirements

You need [Docker](https://docs.docker.com/get-docker/).

### Getting Started

First pull the image:

    docker pull kozo2/cyautoworkshop

Then run a container based on the image:

    docker run -d -p 8888:8888 kozo2/cyautoworkshop

Visit http://localhost:8888 in your browser.
