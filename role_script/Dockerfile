FROM alpine
RUN apk add mysql-client
WORKDIR /app
COPY entrypoint.sh .
COPY script.sql .
ENTRYPOINT [ "/app/entrypoint.sh" ]