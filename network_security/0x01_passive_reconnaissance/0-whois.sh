#!/bin/bash
whois "$1" | awk -F': ' '/^(Registrant|Admin|Tech) / {print $1 "," $2}' | sed 's/State\/Province/State\/Province/' > "$1.csv"
