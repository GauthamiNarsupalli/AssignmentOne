FROM tomcat:9.0

WORKDIR /opt/tomcat/

LABEL maintainer="gauthami"

EXPOSE 8080

CMD [“catalina.sh”, “run”]
