#!/bin/bash
echo "$2  $1: $(sha256sum -c <<< "$2  $1" 2>&1 | grep -oP ':\s\K\S+')"
