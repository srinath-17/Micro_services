FROM maven as build 
WORKDIR /app
COPY . .
RUN mvn install 

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

FROM openjdk:11.0.10-jre
WORKDIR /bapp
COPY --from=build /app/target/offers-0.0.1-SNAPSHOT.jar /bapp
EXPOSE 1001
CMD ["java","-jar","offers-0.0.1-SNAPSHOT.jar"]
