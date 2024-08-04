#!/bin/bash
ps aux | grep -v grep | awk '$6 > 0 && $7 > 0 {print $0}'
