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

## STEP 2: Install Google Chrome and the RCy3 package in Google Colab
- You will need to get a Google Account to use Colab
- You will need to install Google Chrome. Our Notebook does not work with Safari. Firefox may work, but I haven't confirmed it.
- Open this Google Colab link in Chrome while logged in to Google.
  - Simply run the following code cell

  ```
  devtools::install_github("cytoscape/RCy3")
  ```
- It takes a few minutes for install_github to finish.
  - Let's leave it alone and move onto the main workshop.

# Main workshop (primer)

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

## Translating R data into a Cytoscape network using RCy3

Networks offer us a useful way to represent our biological data.
But how do we seamlessly translate our data from R into Cytoscape?

![image](https://user-images.githubusercontent.com/12192/139404069-536a67a2-e8fe-4072-bc42-74bfb060f924.png)

From here it finally becomes hands-on using Google Colab.
Aside from the details, let's connect Google Colab to local Cytoscape.

Make sure your local Cytoscape is fully up and running before running the code below.
It will take some time for Cytoscape to start up and its REST server to start up completely.
(Please wait for about 10 seconds.)

```{r}
library(RCy3)
browserClientJs <- getBrowserClientJs()
IRdisplay::display_javascript(browserClientJs)
cytoscapePing()
```

### Why was the remote Google Colab able to communicate with the local Cytoscape REST service?

We need a detailed description of what happened in

```
browserClientJs <- getBrowserClientJs()
IRdisplay::display_javascript(browserClientJs)
```

We used a technology called **Jupyter Bridge** in the above code.
Jupyter Bridge is a JavaScript implementation that makes HTTP requests from a remote REST client look like local requests.

![image](https://user-images.githubusercontent.com/12192/139530994-8afd99b2-1175-46b3-9ad7-166d8ba78f2a.png)

Since it is difficult to access Cytoscape in the desktop environment from a remote environment, we use Jupyter Bridge.

And since I couldn't get Jupyter Bridge to work in the Orchestra environment,
this workshop is exceptionally using Google Colab instead of Orchestra.

If you have RCy3 installed locally instead of remotely like Google Colab,
you don't need to use this Jupyter Bridge technology.

### (Then) Why use Jupyter Bridge?

- Users do not need to worry about dependencies and environment.
- Easily share notebook-based workflows and data sets
- Workflows can reside in the cloud, access cloud resources, and yet still use Cytoscape features.

### Let's go back to how to translate R data into a Cytoscape network...

Create a Cytoscape network from some basic R objects

```{r}
nodes <- data.frame(id=c("node 0","node 1","node 2","node 3"),
    group=c("A","A","B","B"), # categorical strings
    score=as.integer(c(20,10,15,5)), # integers
    stringsAsFactors=FALSE)
edges <- data.frame(source=c("node 0","node 0","node 0","node 2"),
    target=c("node 1","node 2","node 3","node 3"),
    interaction=c("inhibits","interacts","activates","interacts"),  # optional
    weight=c(5.1,3.0,5.2,9.9), # numeric
    stringsAsFactors=FALSE)
```

#### Data frame used to create Network

![image](https://user-images.githubusercontent.com/12192/139534280-0c569dfd-d66d-4054-9b58-becce79225bc.png)

#### Create Network

```{r}
createNetworkFromDataFrames(nodes, edges, title="my first network", collection="DataFrame Example")
```

#### Export an image of the network

Remember.
All networks we make are created in Cytoscape so get an image of the resulting network and include it in your current analysis if desired.

```{r}
exportImage("my_first_network", type = "png")
```

Initial simple network

![image](https://user-images.githubusercontent.com/12192/139537190-1f79f871-5dbd-4779-9a4f-7c67f263101b.png)

# Main workshop (more practical)
