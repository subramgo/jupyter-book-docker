FROM jupyter/scipy-notebook:latest

# Jupyter notebook extensions
RUN  pip install jupyter_contrib_nbextensions jupyter_nbextensions_configurator

# Jupyter Book packages
RUN pip install -U "jupyter-book==1.0.3"

# Other python packages

COPY requirements.txt $HOME/.

RUN pip install -r $HOME/requirements.txt

 
