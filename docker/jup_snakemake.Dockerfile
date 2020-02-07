FROM jupyter/base-notebook
RUN conda install pandas numpy nbconvert xlrd

USER root

RUN sudo apt-get update
RUN apt-get install build-essential -y
RUN apt-get -qq update
RUN apt-get install -qqy python3-setuptools python3-docutils python3-flask

RUN pip install snakemake
RUN pip install psutil
RUN pip install papermill

EXPOSE 8888

# Configure container startup
ENTRYPOINT ["tini", "-g", "--"]
CMD ["start-notebook.sh"]
WORKDIR /home/jovyan/work

# Fix permissions on /etc/jupyter as root
USER root
RUN fix-permissions /etc/jupyter/

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
