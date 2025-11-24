# Use official Tomcat 9 image
FROM tomcat:9.0

# Remove default webapps (optional but cleaner)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your built WAR into Tomcat’s webapps folder
COPY target/ms.war /usr/local/tomcat/webapps/

# Expose port that your application listens on (7007 as you used)
EXPOSE 7007

# Run Tomcat
CMD ["catalina.sh", "run"]
