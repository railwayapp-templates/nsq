FROM nsqio/nsq

EXPOSE 4150 4151

ENTRYPOINT ["/nsqd","--lookupd-tcp-address=nsqlookupd.railway.internal:4160","--broadcast-address=nsqd.railway.internal","--http-address=0.0.0.0:4151"]
