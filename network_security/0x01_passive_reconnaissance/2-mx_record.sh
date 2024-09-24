#!/bin/bash
nslookup -query=mx $1 | awk '/^Server:/ {sub(/^Server: /, "Server: "); print $0} /^Address: / {sub(/^Address: /, "Address: "); print $0} /mail exchanger/ {sub(/^.*mail exchanger = /, "mail exchanger = "); print}'
