#!/bin/bash

docker pull owasp/zap2docker-stable:latest
docker run -i owasp/zap2docker-stable:latest zap-baseline.py -t "https://github.com/ncs-randy/bitcoin-order-app" -l PASS > zap_baseline_report.html

echo $? > /dev/null