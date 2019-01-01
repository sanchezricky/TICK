#!/usr/bin/env bash

set -euox pipefail

# SMTP server install
sudo apt-get install sendmail

# Adding TICK stack repo
curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -

source /etc/lsb-release

echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

# Update APT
sudo apt-get update

# Influxdb install
sudo apt-get install influxdb

# Starting influxdb
sudo systemctl start influxdb


