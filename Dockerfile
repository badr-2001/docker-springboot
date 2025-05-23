FROM maven:latest
COPY /target/springboot-react-1.0.0.jar .
CMD ["java","-jar","springboot-react-1.0.0.jar"]