#!/bin/sh
filepath='/root/client.json'
if [ ! -f $filepath ]; then
cp /client.json /root/
else
/go/client -c /root/client.json
fi