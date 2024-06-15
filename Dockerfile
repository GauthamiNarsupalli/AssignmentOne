#Use the official Tomcat 9 image as base
FROM tomcat:9-jdk11

#Maintainer Information
LABEL maintainer="gauthaminarsupalli111@gmail.com"

#Remove existing webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT

#Copy WAR file to container
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ROOT.war

#Expose tomcat default port
EXPOSE 8080

#Start Tomcat when the container launches
CMD ["catalina.sh","run"]
