# Cytoscape automation with RCy3

## Instructor

- Kozo Nishida (kozo.nishida@gmail.com)

## Workshop Description

Cytoscape is a network visualization platform.
Recently, workflows using Cytoscape can be automatically executed from R or Python.
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

However, an Orchestra-style workshop environment is also available **as long as it is within your local environment** rather than the Orchestra.
```
docker run -d -p 8888:8888 kozo2/cyautoworkshop
```
and visit http://localhost:8888 in your browser.


### Workshop Participation

After the basic concepts of Cytoscape automation is introduced, students will be given the opportunity to reproduce more practical example workflow.

### Bioconductor packages used

- RCy3

This repository provides biologically relevant analyses using the [RCy3](https://bioconductor.org/packages/RCy3/) package.

## Workshop goals and objectives

### Learning goals

### Learning objectives


