#!/bin/sh

curl localhost:9200/test_index/_doc/1 | jq .