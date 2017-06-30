FROM java:8
VOLUME /tmp
EXPOSE 8080:8080
ADD loanservices-1.0.jar loans.jar
RUN bash -c 'touch /loans.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container","-jar","/loans.jar"]
