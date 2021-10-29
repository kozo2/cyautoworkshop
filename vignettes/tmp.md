## Cytoscape Automation Workshop

### Introductions

Kozo Nishida, RIKEN
- A member of Bioconductor community advisory board
- Author of a Bioconductor package based on RCy3 (transomics2cytoscape)
- Cytoscape community contributor (Google Summer of Code, Google Season of Docs)
- Author of KEGGscape Cytoscape App

## What is Cytoscape?

![image](https://user-images.githubusercontent.com/12192/139395948-a00a68f1-64c4-4dbd-b33e-a7258a4b2e4e.png)

- Network nodes and edges have annotation tables.
- Color, shape, size, or ... according to the annotation table can be mapped to nodes and edges.
- The main usage was to manually execute the workflow with the GUI.
- Recently, automating Cytoscape operations from notebooks that describe workflows from R or Python has become more popular.

## How can Cytoscape operations be automated?

![image](https://user-images.githubusercontent.com/12192/139397677-80076550-e458-4bd4-9ab5-ba48ef6843b9.png)

- Cytoscape has built-in command system like shell commands (for operating Cytoscape).
  - They are also provided as REST APIs.
- However, since table operations are essential, it is convenient to be able to operate them with R or Python.
  - RCy3 or py4cytoscape
  - py4cytoscape is Python clone of RCy3

## Why do we need to automate?
Why run a script when I could just use Cytoscape directly?

- For things you want to do multiple times, e.g., loops
- For things you want to repeat in the future
- For things you want to share with colleagues or publish
- For things you are already working on in R or Python, etc
  - To prepare data for collaborators

## Automation with RCy3

![image](https://user-images.githubusercontent.com/12192/139400142-8a2a764b-dbbe-4e47-9d3c-d4cc07602468.png)

[RCy3: Network biology using Cytoscape from within R. F1000Research 2019.](https://f1000research.com/articles/8-1774)

