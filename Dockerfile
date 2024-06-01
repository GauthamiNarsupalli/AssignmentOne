FROM tomcat:9

LABEL maintainer="gauthami"

COPY /target/ABCTechnologies-1.0.war /opt/tomcat/webapps/

EXPOSE 8080
