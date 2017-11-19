FROM jupyter/scipy-notebook:8e15d329f1e9

# conda / pip
RUN conda install jupyter
RUN conda install -c conda-forge nbgrader
RUN conda install -c damianavila82 rise
RUN conda install -c conda-forge ipyvolume
RUN pip install plotly

# ipyvolume - rather safe than sorry
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

# nbgrader - student-mode
RUN jupyter nbextension disable --sys-prefix create_assignment/main
RUN jupyter nbextension disable --sys-prefix formgrader/main --section=tree
RUN jupyter serverextension disable --sys-prefix nbgrader.server_extensions.formgrader