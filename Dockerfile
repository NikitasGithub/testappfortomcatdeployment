# Use a base image with Java and Tomcat pre-installed
FROM tomcat:9-jdk11-openjdk

# Set the working directory to the Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file (built by Ant) into the webapps directory of Tomcat
COPY path/to/your/java-application.war ./ROOT.war

# Expose the Tomcat port (default is 8080)
EXPOSE 8086

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
