FROM tomcat:9

WORKDIR /opt/tomcat/bin/

LABEL maintainer="gauthami"

EXPOSE 8080

CMD [“catalina.sh”, “run”]
