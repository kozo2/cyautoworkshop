# Cytoscape automation with RCy3

## Instructor

- Kozo Nishida (kozo.nishida@gmail.com)

## Workshop Description

Cytoscape is a network visualization platform.
Recently, workflows using Cytoscape can be automatically executed from R or Python.
This is important not only because it can be done automatically,
but also because it allows you to take advantage of the rich data analysis packages of R or Python.
In this workshop, I will explain the basic usage of Cytoscape automation and more practical usage.

### Prerequisites

- Basic knowledge of network and biology
- Basic knowledge of R

### Preparation

You need to use [Google Colab](https://colab.research.google.com/) to run and reproduce the workshop material.
You must have a Google account to access this.
You also need to use [Cytoscape](https://cytoscape.org/download.html) in your local desktop environment in addition to Google Colab.
Unlike other workshops, this workshop cannot be run only in a remote environment.
You need to use a combination of remote Google Colab and local Cytoscape.
How to set them up will be described later.

#### Disclaimer
Unlike other workshops, this workshop does not use [the Orchestra platform](http://app.orchestra.cancerdatasci.org/).
This is because my notebook is doing a browser hack using JavaScript.
Currently that JavaScript doesn't work in Orchestra.

However, an Orchestra-style workshop environment is also available **as long as it is within your local environment** rather than the Orchestra.
```
docker run -d -p 8888:8888 kozo2/cyautoworkshop
```
and visit http://localhost:8888 in your browser.

### Workshop Participation

After the basic concepts of Cytoscape automation is introduced,
students will be given the opportunity to reproduce more practical example workflow.

### Bioconductor packages used

- RCy3

This repository provides biologically relevant analyses using the [RCy3](https://bioconductor.org/packages/RCy3/) package.

## Workshop goals and objectives

### Learning goals

### Learning objectives


