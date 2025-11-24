# Use Tomcat 9
FROM tomcat:9.0

# Clean default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your raw JSP/Servlet project directly into Tomcat
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
