FROM maven AS builder
WORKDIR /app
COPY . . 
RUN mvn clean package


FROM tomcat
WORKDIR /user/local/tomcat webapps 
COPY --from=builder /app/webapp/target/*.war .
EXPOSE 8080
CMD ["catalina.sh", "run"]
