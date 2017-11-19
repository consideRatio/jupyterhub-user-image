# About
This repo is used by the `repo2docker` command line tool in order to generate an Docker image suitable for a single user on my JupyterHub meant for my students. I'm providing `repo2docker` with one of `conda`'s `environment.yml` files.

## environment.yml
A `conda` environment file.

__Creation__
```bash
conda create env -n hub-user python=3.6 anaconda
conda install jupyter
conda install -c conda-forge nbgrader
conda install -c damianavila82 rise
conda install -c conda-forge ipyvolume
pip install plotly
conda env export > environment.yml
```

__Adjustments__
* Uncomment `name: hub-user`
* Uncomment `prefix: ...`

## postBuild
A bash script file run by `repo2docker`.