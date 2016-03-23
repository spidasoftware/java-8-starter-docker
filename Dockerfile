FROM ubuntu:14.04

ENV SPIDA_HOME=/root/SPIDA

RUN mkdir -p /root/.m2

# Install Java.
RUN \
  apt-get install -y software-properties-common curl && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g grunt-cli

RUN mkdir -p $SPIDA_HOME/calc/libraries && \
    mkdir -p $SPIDA_HOME/logs && \
    mkdir -p $SPIDA_HOME/clients
