# Use the official Tomcat 9 image as base
FROM tomcat:9-jdk11

# Maintainer information
LABEL maintainer="gauthaminarsupalli111@gmail.com"

#workdir
WORKDIR /opt/jenkins/workspace/Pipeline/target

# Expose the default Tomcat port
EXPOSE 8080

