FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/aws-deploy-springboot-service.jar aws-deploy-springboot-service.jar
ENTRYPOINT ["java","-jar","/aws-deploy-springboot-service.jar"]
