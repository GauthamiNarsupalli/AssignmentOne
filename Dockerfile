FROM tomcat

LABEL maintainer="gauthami"

COPY /opt/jenkins/workspace/Pipeline/target/ABCTechnologies-1.0.war /opt/tomcat/webapps/

EXPOSE 8080
