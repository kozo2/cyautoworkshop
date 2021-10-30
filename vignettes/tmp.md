# Pre-Workshop Instructions

Please perform the following steps *before the workshop*.
These steps take a few minutes
and you may have issues specific to your machine.

## STEP 1: Install the latest Cytoscape into your Desktop environment(3.9.0)
- If you have Cytoscape installed before 3.9.0, please update it.
- [Download Cytoscape](https://cytoscape.org/download.html).
- Open and follow installation steps.
  - If you don't have Java in your environment, Cytoscape will ask you if you want to download it. Please accept it and download Java.

Mac users need to be careful about
![image](https://user-images.githubusercontent.com/12192/139439069-dba3e46a-8fe2-414c-98fe-55d02ba39e32.png)

- Launch Cytoscape 3.9.0 from start menu or Desktop shortcut

![image](https://user-images.githubusercontent.com/12192/139441980-5d73579f-39dd-45da-916b-759eff99474d.png)

- A message like the above image will appear, so press the OK button to restart Cytoscape.
- and keep Cytoscape up and running.

## STEP 2: Install the RCy3 package in Google Colab
- You will need to get a Google Account to use Colab
- Open this Google Colab link
  - Simply run the following code cell

  ```
  devtools::install_github("cytoscape/RCy3")
  ```
- It takes a few minutes for install_github to finish.
  - Let's leave it alone and move onto the main workshop.

# Main workshop

## Self-introduction

Kozo Nishida, RIKEN, Japan
- A member of Bioconductor Community Advisory Board (CAB)
- Author of a Bioconductor package based on RCy3 (transomics2cytoscape)
- Cytoscape community contributor (Google Summer of Code, Google Season of Docs)
- Author of KEGGscape Cytoscape App

## What is Cytoscape?

![image](https://user-images.githubusercontent.com/12192/139426468-915e9a76-7e4e-4a37-aee9-3d0e344f551e.png)

- Open source, cross platform Java desktop GUI app.
- for network visualization.

### Core concepts

**Networks and Tables**: Network nodes and edges have annotation tables.

![image](https://user-images.githubusercontent.com/12192/139427094-bfd9a839-dabf-468d-8f28-6458443c8e61.png)

![image](https://user-images.githubusercontent.com/12192/139427149-4f0fe568-3851-4de6-834e-2e809e85f1be.png)

Color, shape, size, or ... according to the annotation table can be mapped to nodes and edges.

## Why do we need to automate?
Why automate Cytoscape when I could just use the GUI directly?

- For things you want to do multiple times, e.g., loops
- For things you want to repeat in the future
- For things you want to share with colleagues or publish
- For things you are already working on in R or Python, etc
  - To prepare data for collaborators

In short, for "reproducibility", "data sharing", "the use of R or Python".

## How can Cytoscape GUI operations be automated?

![image](https://user-images.githubusercontent.com/12192/139397677-80076550-e458-4bd4-9ab5-ba48ef6843b9.png)

- Cytoscape makes that possible with the REST API.
- Today Cytoscape is not only a Desktop application but also a REST server.
- You can check if Cytoscape is now working as a server with the command below.

  ```
  curl localhost:1234
  ```

- Now Cytoscape has REST API for almost every GUI operation.
  - RCy3 or py4cytoscape is R or Python wrapper of the REST API
  - py4cytoscape is Python clone of RCy3, py4cytoscape has same function specifications with RCy3
- Since table operations are essential for Bioinformatics, it is convenient to be able to operate them with R[dplyr] or Python[pandas].

[CyREST: Turbocharging Cytoscape Access for External Tools via a RESTful API. F1000Research 2015.](https://dx.doi.org/10.12688%2Ff1000research.6767.1)

[Cytoscape Automation: empowering workflow-based network analysis. Genome Biology 2019.](https://doi.org/10.1186/s13059-019-1758-4)

## Automation with RCy3

![image](https://user-images.githubusercontent.com/12192/139400142-8a2a764b-dbbe-4e47-9d3c-d4cc07602468.png)

[RCy3: Network biology using Cytoscape from within R. F1000Research 2019.](https://f1000research.com/articles/8-1774)

## Translating R data into Cytoscape network using RCy3

Networks offer us a useful way to represent our biological data.
But how do we seamlessly translate our data from R into Cytoscape?

![image](https://user-images.githubusercontent.com/12192/139404069-536a67a2-e8fe-4072-bc42-74bfb060f924.png)

From here it finally becomes hands-on using Google Colab.
Aside from the details, let's connect Google Colab to local Cytoscape.

Make sure your local Cytoscape is fully up and running before running the code below.

```{r}
library(RCy3)
browserClientJs <- getBrowserClientJs()
IRdisplay::display_javascript(browserClientJs)
cytoscapePing()
```
