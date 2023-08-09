FROM nsqio/nsq

EXPOSE 4160 4161

ENTRYPOINT ["/nsqlookupd","--broadcast-address=0.0.0.0","--http-address=0.0.0.0:4161"]