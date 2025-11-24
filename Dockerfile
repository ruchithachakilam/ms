# Use official Tomcat 9 image
FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR (correct name from your POM file)
COPY target/microserviceecommerce.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
