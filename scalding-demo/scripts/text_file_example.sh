#!/usr/bin/env bash

# remove -Dxxxx=xxx for running in cluster

hadoop jar target/scalding-demo-1.0-SNAPSHOT.jar \
    com.twitter.scalding.Tool \
    -Dmapreduce.framework.name=local -Dfs.defaultFS=file:/// \
    TextFileExample \
    --hdfs \
    --input testdata/word.txt \
    --output output
