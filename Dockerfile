# syntax=docker/dockerfile:1

FROM quay.io/jupyter/minimal-notebook:python-3.12

# create and set working directory
WORKDIR /home/jovyan/app

# expose default port
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "-port=8888", "--no-browser", "--allow-root"]

