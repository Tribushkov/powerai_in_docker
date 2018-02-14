#!/bin/bash

set -e -x
export MAVEN_REPO=apache-maven-3.5.2-bin.tar.gz

# install OpenJDK http://openjdk.java.net/install/
apt-get update && apt-get install -y \
    openjdk-8-jdk \
    openjfx &&\
    apt-get clean

echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-ppc64el' >> ~/.bashrc

# download Apache Maven https://maven.apache.org/install.html
cd /opt && \
    wget http://www-eu.apache.org/dist/maven/maven-3/3.5.2/binaries/${MAVEN_REPO}  && \
    tar -xvzf ${MAVEN_REPO} && \
    mv apache-maven-3.5.2 maven

echo 'export PATH=$PATH:/opt/maven/bin' >> ~/.bashrc
