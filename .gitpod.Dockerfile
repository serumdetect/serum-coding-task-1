from condaforge/mambaforge

ARG CONDA_ENV=local-env

COPY ./conda-requirements.txt /serum-coding-task/conda-requirements.txt
RUN conda config --add channels bioconda
RUN conda create -y -n ${CONDA_ENV}
RUN echo "conda activate ${CONDA_ENV}" >> ~/.bashrc

RUN mamba install -y -n ${CONDA_ENV} mamba
RUN mamba install -y -n ${CONDA_ENV} --file /serum-coding-task/conda-requirements.txt

