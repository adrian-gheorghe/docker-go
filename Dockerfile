FROM golang:1.11

# Installing Git
RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install git -y

RUN mkdir -p /go/src/app

WORKDIR /go/src/app

RUN go get github.com/codegangsta/gin

CMD gin run