# Cytoscape automation with RCy3

## Instructor

- Kozo Nishida (kozo.nishida@gmail.com)

## Workshop Description

Cytoscape is a network visualization platform for biology.
Recently, workflows using Cytoscape can be automatically executed in R and Python.
This is important not only because it can be done automatically,
but also because it allows you to take advantage of the rich data analysis packages of R or Python.
In this workshop, I will explain the basic usage of automation and more practical usage.

### Prerequisites

- Basic knowledge of Cytoscape
- Basic knowledge of R
- Basic understanding of the biological network database (STRING)

Useful background reading

- The [RCy3](https://bioconductor.org/packages/release/bioc/html/RCy3.html) vignettes.

### Preparation

We have created a Jupyter Notebook that can be run on [Google Colab](https://colab.research.google.com/) so that you can reproduce this workshop.
You must have a Google account to access this.
You also need to have [the desktop version of Cytoscape](https://cytoscape.org/download.html) installed within your local desktop environment.
After the Cytoscape installation is complete, you need to launch Cytoscape.
And after you launch Cytoscape, you can run the notebook for this workshop.

#### Disclaimer
Unlike other workshops, this workshop does not use [the Orchestra platform](http://app.orchestra.cancerdatasci.org/).
This is because my notebook is doing a browser hack using Javascript.
We considered making this work in Orchestra, but we couldn't make it happen by this workshop.

### Workshop Participation

Bioconductor packages used


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
