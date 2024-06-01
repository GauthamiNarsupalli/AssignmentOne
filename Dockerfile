FROM tomcat:9

WORKDIR /opt/tomcat/

LABEL maintainer="gauthami"

EXPOSE 8080

CMD [“/opt/tomcat/bin/catalina.sh”, “run”]
