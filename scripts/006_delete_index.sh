#!/bin/sh

curl -X DELETE -H "Content-Type: application/json" localhost:9200/test_index | jq .