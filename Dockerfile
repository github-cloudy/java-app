#Use the official Tomcat image as the base image 
FROM tomcat:9.0-jdk11

MAINTAINER "CLOUDCONTAINER TECHNOLOGIES PRIVATE LIMITED"

LABEL Description="This Dockerfile containerized java application into docker images"
LABEL Author="Murtuza Ansari"
LABEL Email="murtuza2696@gmail.com"
 
ENV  APP_Type JAVA
ENV  COMPANY_Type IT
ENV  COMPANY_EMail murtuza@cloudconatiner.in

#Copy War file into The Tomcat webapps directly
COPY target/java-app-1.0.war /usr/local/tomcat/webapps/

#EXPOSE port 8080 for the Tomcat server 
EXPOSE 8080

#Set the default command to run tomcat on container start rp
CMD ["catalina.sh", "run"]
