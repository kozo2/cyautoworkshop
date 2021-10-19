library(BiocManager)

# Install R kernel for R Jupyter
BiocManager::install("rzmq")
BiocManager::install("repr")
BiocManager::install("IRkernel")
BiocManager::install("IRdisplay")
IRkernel::installspec(user = FALSE);

# Install dependencies for curatedMetagenomicAnalyses
BiocManager::install("cytoscape/RCy3", dependencies = TRUE)
