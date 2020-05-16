FROM java:8
MAINTAINER dennis
VOLUME /tmp
ADD target/spring-boot-kubernetes-1.0-SNAPSHOT.jar /executable.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/executable.jar"]