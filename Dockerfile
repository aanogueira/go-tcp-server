FROM golang:1.15-alpine

WORKDIR /root/

COPY . .

RUN go mod download && \
    go build -o app .

ENTRYPOINT ["/root/app"]

