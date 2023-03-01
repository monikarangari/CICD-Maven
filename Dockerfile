FROM tomcat:8.5-jdk8-temurin-jammy
LABEL author = monika
RUN apt-get update -y
WORKDIR /usr/local/tomcat/webapps/
COPY target/my-app-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
