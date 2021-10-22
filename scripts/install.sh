#!/usr/bin/bash

REPOSITORY="cyautoworkshop"
PASSWORD=${PASSWORD:=kozo2}

# Install JupyterHub dependencies
python3 -m pip install jupyterlab

# Add default user
useradd -m -G staff,rstudio kozo2 
echo "kozo2:$PASSWORD" | chpasswd

# Allow user to write to RStudio DB
#chmod -R g+w /var/lib/rstudio-server
#chown -R :rstudio /var/lib/rstudio-server

# Remove s6 Rstudio service
#rm -rf /etc/services.d/rstudio

# Create Jupyter configuration file
cd /home/kozo2
su -c "jupyter server --generate-config" kozo2

# Remove password and token requirement
cat <<EOT >> /home/kozo2/.jupyter/jupyter_server_config.py
c.NotebookApp.password = ""
c.NotebookApp.token = ""
c.NotebookApp.ip = "*"
EOT

# Clone repository and change permissions waldronlab
git clone --depth 1 https://github.com/kozo2/$REPOSITORY.git /home/kozo2/$REPOSITORY
chown -R kozo2:kozo2 /home/kozo2/$REPOSITORY

# Copy README.md and adjust links for analyses paths
cat /home/kozo2/$REPOSITORY/README.md | sed "s/(vignettes/($REPOSITORY\/vignettes/g" >> /home/kozo2/README.md

cp /home/kozo2/$REPOSITORY/workshop.ipynb /home/kozo2/workshop.ipynb
