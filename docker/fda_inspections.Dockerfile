FROM erblast/jup_snakemake

USER root
WORKDIR /home/jovyan/work
RUN conda install git
RUN git clone https://github.com/erblast/fda_inspections.git
RUN cd fda_inspections/ && snakemake -F  &&  cd ..
CMD /bin/bash