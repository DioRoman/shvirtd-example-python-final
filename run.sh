#!/bin/bash
git clone https://github.com/DioRoman/shvirtd-example-python-final.git
mv shvirtd-example-python-final /opt
docker compose -f /opt/shvirtd-example-python-final/compose.yaml up -d
