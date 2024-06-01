FROM tomcat:9

WORKDIR /opt/tomcat/

LABEL maintainer="gauthami"

EXPOSE 8080

RUN cd /opt/tomcat/bin/

CMD [“catalina.sh”, “run”]
