#!/bin/bash

TARGET="/tmp/elasticsearch"

if [ ! -f "$TARGET/elasticsearch-5.1.1/bin/elasticsearch" ]; then
    echo "$TARGET not found. Building..."
    mkdir -p $TARGET
    cd $TARGET
    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz
    tar xvf elasticsearch-5.1.1.tar.gz
else
    echo "$TARGET already exists"
fi
