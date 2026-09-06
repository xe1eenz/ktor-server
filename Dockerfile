FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . .

ENV JAVA_HOME=/opt/java/openjdk
ENV PATH="${JAVA_HOME}/bin:${PATH}"

RUN chmod +x kotlin

RUN ./kotlin build

EXPOSE 8080

CMD ["./kotlin", "run"]