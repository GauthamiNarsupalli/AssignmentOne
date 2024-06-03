# Use a minimal base image
FROM ubuntu:20.04

# Set the Tomcat version
ENV TOMCAT_VERSION 9.0.89

# Install dependencies
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download and extract Tomcat
RUN wget -O /tmp/tomcat.tar.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz && \
    tar xf /tmp/tomcat.tar.gz -C /opt && \
    rm /tmp/tomcat.tar.gz && \
    mv /opt/apache-tomcat-9.0.89 /opt/tomcat

# Set environment variables
ENV CATALINA_HOME /opt/tomcat
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$CATALINA_HOME/bin:$PATH

WORKDIR /opt/tomcat/

# Expose Tomcat port
EXPOSE 8080

# Clean up unnecessary files
RUN apt-get purge -y openjdk-11-jdk wget && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /opt/tomcat/webapps/*

# Start Tomcat
CMD ["catalina.sh", "run"]
