# Introduction
This tutorial is meant to be a simple introduction into the wonderful world of Apache Kafka. It showcases the use of kafka-python and how to integrate with Apache Spark.

It was created as a part of big data analysis class at the AGH University of Science and Technology, Faculty of Computer Science, Electronics and Telecommunications.

# Usage and contribution
Feel free to use it if and whenever you like. We would be greateful if you could suggest a change if you would like to showcase another example or if find that something wasn't done properly or could have been done better.

# The tutorial

## Getting started
The tutorial is distributed as a few Docker images so first you will need an access to a machine with a Doker daemon. Once that's sorted out simple run the following command in the project's root directory:
```bash
$ docker-compose up
```

Now in a separate ttl run:
```bash
$ docker logs -f jupyter_instance
```
And access Jupyter notebook with the provided URL.

## Clean up
Once you decide that you are done with the tutorial the following command will remove every container,network bridges and volumes that were created:
```bash
$ docker-compose down -v
```
And to remove Docker images and free up the disk space run:
```bash
$ docker rmi kafka_data_processing_jupyter wurstmeister/kafka:2.13-2.7.0 wurstmeister/zookeeper:3.4.6
```