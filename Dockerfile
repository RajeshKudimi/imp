FROM maven:3.6.0-jdk-8-slim
RUN mkdir app
WORKDIR /app
RUN apt-get update -y
RUN apt-get -y  install wget 
RUN apt-get -y install git 
RUN git clone https://github.com/RajeshKudimi/javawar.git
ADD /root/javawar/pom.xml/app/pom.xml
ADD /root/javawar/src/app/src
RUN ["mvn","clean","install"]


