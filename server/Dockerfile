FROM alpine
RUN apk add python3 curl bash; echo "ok" > index.html
WORKDIR /
COPY . .
EXPOSE 3000
RUN sh -c "/start-servers.sh"
ENTRYPOINT [ "python3", "-m", "http.server", "3000"]
