# Docker file for Ubuntu with OpenJDK 18 and Tomcat 9.
FROM ubuntu:20.04
LABEL maintainer="gauthami"

# Set environment variables
ENV TOMCAT_VERSION 9.0.89
ENV CATALINA_HOME /opt/tomcat
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $CATALINA_HOME/bin:$PATH

# Install JDK & wget packages.
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-11-jdk wget

# Install and configure Tomcat.
RUN mkdir $CATALINA_HOME
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz
RUN cd /tmp && tar xzvf tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.89/* $CATALINA_HOME
RUN rm -rf /tmp/apache-tomcat-9.0.89
RUN rm -rf /tmp/tomcat.tar.gz

COPY ./opt/jenkins/workspace/Pipeline/traget/ABCtechnologies-1.0.war /opt/tomcat/webapps

# Expose Tomcat port.
EXPOSE 8080

# Start Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
