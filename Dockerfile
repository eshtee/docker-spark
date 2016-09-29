FROM syedahmed/java
MAINTAINER "Syed Ahmed" <ishtiaq_ahmed79@hotmail.com>
USER root

# Upgrade system
RUN yum update -y
RUN yum -y upgrade

# Download spark 1.6.2 and install it
RUN wget "http://d3kbcqa49mib13.cloudfront.net/spark-1.6.2-bin-hadoop2.6.tgz" -P /usr/local/
RUN cd /usr/local && tar -xvf spark-1.6.2-bin-hadoop2.6.tgz && mv spark-1.6.2-bin-hadoop2.6 spark && rm spark-1.6.2-bin-hadoop2.6.tgz

# Set environment variables
ENV SPARK_HOME /usr/local/spark
ENV PATH $PATH:$SPARK_HOME/bin

