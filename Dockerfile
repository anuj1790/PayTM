FROM openjdk:8-jre-alpine3.9
 
# copy the packaged jar file into our docker image
COPY  DokerImageSource/airports-assembly-1.0.1.jar /airports-assembly-1.0.1.jar
 
# set the startup command to execute the jar
CMD ["java", "-jar", "/airports-assembly-1.0.1.jar"]
