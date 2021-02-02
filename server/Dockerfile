FROM alpine
RUN apk add python3 curl bash; echo "ok" > index.html
WORKDIR /
COPY . .
EXPOSE 3000
ENTRYPOINT ["sh", "-c", "/start-servers.sh"]
