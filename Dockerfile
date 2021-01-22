FROM jupyter/all-spark-notebook

RUN pip install kafka-python

ENV JUPYTER_ALLOW_INSECURE_WRITES=1