FROM java:latest

RUN apt-get update && apt-get install -y curl wget

RUN wget https://github.com/proundmega/protocolos-app/releases/download/v1.0/SpringBootLogin-1.0.jar

ENV SPRING_APPLICATION_JSON='{"spring.redis.host":"redis"}'
CMD ["java", "-jar", "SpringBootLogin-1.0.jar" ]





