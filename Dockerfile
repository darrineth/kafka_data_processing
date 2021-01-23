FROM jupyter/all-spark-notebook:aec555e49be6

RUN pip install kafka-python==2.0.2 requests==2.25.1

USER root
RUN sudo echo "spark.jars.packages=org.apache.spark:spark-sql-kafka-0-10_2.12:3.0.1" >> /usr/local/spark/conf/spark-defaults.conf
USER 1000

ENV JUPYTER_ALLOW_INSECURE_WRITES=1