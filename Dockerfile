  
# the image was we used to work in the container , we have java enviroment
FROM openjdk 


# Copying the jar files from target directory
COPY target/*.jar app.jar

# Exposing the default port of the petclinic application
EXPOSE 8080

# The command that runs when the container starts with change from default profile to mysql profile in order to use mysql DB
ENTRYPOINT ["java","-jar","/app.jar", "--spring.profiles.active=mysql"]