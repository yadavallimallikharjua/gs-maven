FROM : "openjdk:8u322-slim-buster"
LABEL : author="Mallikharjuna"
ADD : "https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar/springpetclinic.jar
EXPOSE : "8080"
CMD : ["java","-jar","/springpetclinic.jar"]