FROM quay.io/jupyter/datascience-notebook

# create and set working directory
WORKDIR /home/jovyan/app

# copy notebook into container
COPY notebooks/DATABASE-AND-PREPROCESS-FOR-DATA.ipynb /home/jovyan/app

# expose default port
EXPOSE 8888

