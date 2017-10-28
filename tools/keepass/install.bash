#!/bin/bash

sudo apt install -y keepass2 \
 libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil mono-mcs

wget https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
sudo mv KeePassHttp.plgx /usr/lib/keepass2/KeePassHttp.plgx
sudo chmod 0644 /usr/lib/keepass2/KeePassHttp.plgx

