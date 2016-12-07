#!/bin/bash

TARGET="/tmp/elasticsearch"

if [ ! -f "$TARGET/elasticsearch-2.3.3/bin/elasticsearch" ]; then
    echo "$TARGET not found. Building..."
    mkdir -p $TARGET
    cd $TARGET
    wget --no-check-certificate https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-2.3.3.tar.gz
    tar xvf elasticsearch-2.3.3.tar.gz
else
    echo "$TARGET already exists"
fi
