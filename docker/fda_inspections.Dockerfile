FROM erblast/jup_snakemake

USER root
WORKDIR /home/jovyan/work
RUN conda install git
RUN git clone https://github.roche.com/KONESWAB/fda_inspections_at_roche.git
RUN cd fda_inspections_at_roche/ && snakemake -F  &&  cd ..
CMD /bin/bash
