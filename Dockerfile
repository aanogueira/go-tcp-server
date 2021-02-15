FROM alpine:latest

WORKDIR /root/

COPY app .

ENTRYPOINT ["/root/app"]

