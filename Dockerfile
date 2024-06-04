# Use the official Tomcat image from Docker Hub
FROM tomcat:9-jdk11

#Maintainer Information
LABEL maintainer="gauthaminarsupalli111@gmail.com"

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from the local filesystem into the Tomcat webapps directory
COPY ABCtechnologies.war /usr/local/tomcat/webapps/*

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
