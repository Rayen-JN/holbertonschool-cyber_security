#!/bin/bash
sha256sum $1 | grep -q $2 && echo "$1: OK" || echo "$1: FAIL"
