FROM openjdk:8-jre
ENV JAVA_APP_JAR product-app.jar
ENV AB_ENABLED off
ENV AB_JOLOKIA_AUTH_OPENSHIFT true
ENV JAVA_OPTIONS -Xmx256m -Djava.security.egd=file:///dev/./urandom
EXPOSE 8081
ADD target/product-app.jar ./
USER root
###ENTRYPOINT ["java -jar product-app.jar"]
CMD exec java -Djava.security.egd=file:/dev/./urandom -jar product-app.jar

