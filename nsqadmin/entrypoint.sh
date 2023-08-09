#!/bin/bash

# Resolve the domain to an IP address
resolved_ip=$(ping -c 1 nsqlookupd.railway.internal | awk 'NR==1 {print $3}' | sed 's/[()]//g')

# Check if IP resolution was successful
if [ -z "$resolved_ip" ]; then
    echo "Failed to resolve IP address for nsqlookupd.railway.internal"
    exit 1
fi

# Run nsqadmin with resolved IP address
nsqadmin --lookupd-http-address="$resolved_ip":4161 --http-address=0.0.0.0:4171 --allow-config-from-cidr 0.0.0.0/0

# Keep the container running
tail -f /dev/null