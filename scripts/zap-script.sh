#!/bin/bash

docker pull owasp/zap2docker-stable:latest
docker run -i owasp/zap2docker-stable:latest zap-baseline.py -t "https://kenken64.github.io/bitcoin-order-app/" -l PASS > zap_baseline_report.html

echo $? > /dev/null