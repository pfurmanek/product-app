FROM openjdk:8-jre
ADD target/product-app-0.0.1-SNAPSHOT.jar .
CMD /usr/bin/java -Xmx400m -Xms400m -Djava.security.egd=file:/dev/./urandom -jar product-app-0.0.1-SNAPSHOT.jar
EXPOSE 8080