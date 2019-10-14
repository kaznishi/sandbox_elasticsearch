#!/bin/sh

curl -X PUT -H "Content-Type: application/json" localhost:9200/test_index/_doc/1 \
-d @- <<EOF | jq .
{
    "name": "hogehoge",
    "score": 85
}
EOF