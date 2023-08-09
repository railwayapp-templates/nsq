FROM nsqio/nsq

EXPOSE 4171

ENTRYPOINT ["/nsqadmin","--lookupd-http-address=nsqlookupd.railway.internal:4161","--http-address=0.0.0.0:4171","--allow-config-from-cidr 0.0.0.0/0"]