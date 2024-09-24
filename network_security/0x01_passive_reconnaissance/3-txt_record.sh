#!/bin/bash
nslookup -type=txt $1 | awk '/^Server:/ {sub(/^Server: /, "Server: "); print $0} /^Address: / {sub(/^Address: /, "Address: "); print $0} /text =/ {sub(/^.*text = /, "text = "); print}'
