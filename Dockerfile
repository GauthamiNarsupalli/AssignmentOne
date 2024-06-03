# Use the official Tomcat 9 image as base
FROM tomcat:9-jdk11

# Maintainer information
LABEL maintainer="gauthaminarsupalli111@gmail.com"

# Remove existing webapps
RUN rm -rf /usr/local/tomcat/webapps/*

RUN cd /opt/jenkins/workspace/Pipeline/target/

# Copy the WAR file from your local machine to the container
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
