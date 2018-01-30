FROM golang:alpine
LABEL maintatner="lunksana <zoufeng4@gmail.com>"
RUN apk update && \
    apk upgrade && \
    apk add wget && \
    rm /var/cache/apk/*
VOLUME /root

RUN wget https://github.com/xtaci/kcptun/releases/download/v20170221/kcptun-linux-amd64-20170221.tar.gz && \
    tar xzf kcptun-linux-amd64-20170221.tar.gz && \
    rm kcptun-linux-amd64-20170221.tar.gz server_linux_amd64 && \
    mv client_linux_amd64 client 
#RUN go get github.com/xtaci/kcptun/client
ADD client.json /
ADD start.sh /
RUN chmod +x /start.sh
EXPOSE 12948
CMD set -xe &&\  
    /start.sh

