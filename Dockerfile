# Use the official Tomcat 9 image as base
FROM tomcat:9-jdk11

# Maintainer information
LABEL maintainer="gauthaminarsupalli111@gmail.com"

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
