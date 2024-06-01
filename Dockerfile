FROM tomcat:9

WORKDIR /opt/tomcat/

LABEL maintainer="gauthami"

EXPOSE 8080

CMD [“./bin/startup.sh”, “run”]
