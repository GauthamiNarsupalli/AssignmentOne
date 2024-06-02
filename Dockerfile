FROM tomcat:9.0

WORKDIR /opt/tomcat/

ENV CATALINA_BASE /opt/tomcat
ENV CATALINA_HOME /opt/tomcat
ENV CATALINA_TMPDIR /opt/tomcat/temp
ENV PATH $CATALINA_HOME/bin:$PATH

LABEL maintainer="gauthami"

EXPOSE 8080

CMD [“/usr/local/tomcat/bin/catalina.sh”, “run”]
