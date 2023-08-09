#!/bin/sh

nsqadmin --lookupd-http-address=$RAILWAY_NSQLOOKUPD:80 --http-address=0.0.0.0:4171 --allow-config-from-cidr 0.0.0.0/0

# Keep the container running
tail -f /dev/null