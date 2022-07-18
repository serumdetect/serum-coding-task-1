from condaforge/mambaforge

COPY ./conda-requirements.txt /serum-coding-task/conda-requirements.txt
RUN conda config --add channels bioconda
RUN mamba install -y mamba
RUN mamba install -y --file /serum-coding-task/conda-requirements.txt

# Make sure the packages are accessible by gitpod
RUN chmod --recursive a+rwx /opt/conda
