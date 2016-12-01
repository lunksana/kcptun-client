FROM golang:alpine
MAINTAINER lunksana <zoufeng4@gmail.com>
RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add wget
VOLUME /root

RUN wget https://github.com/xtaci/kcptun/releases/download/v20161118/kcptun-linux-amd64-20161118.tar.gz && \
    tar xzf kcptun-linux-amd64-20161118.tar.gz && \
    rm kcptun-linux-amd64-20161118.tar.gz server_linux_amd64 && \
    mv client_linux_amd64 client 
#RUN go get github.com/xtaci/kcptun/client
#COPY client.json /root/client.json
EXPOSE 12948
CMD set -xe &&\  
    /go/client -c /root/client.json

