FROM tomcat:9.0

LABEL maintainer="gauthami"

ENV CATALINA_BASE /opt/tomcat
ENV CATALINA_HOME /opt/tomcat
ENV CATALINA_TMPDIR /opt/tomcat/temp
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR /opt/tomcat/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
