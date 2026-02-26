FROM openjdk:21-slim

WORKDIR /app

COPY GraphDFSServer.java /app/

RUN javac -d . GraphDFSServer.java

ENV PORT 8080
EXPOSE 8080

CMD ["java", "-cp", ".", "GraphDFSServer"]
