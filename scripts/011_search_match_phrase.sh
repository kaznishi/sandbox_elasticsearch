#!/bin/sh

curl -H "Content-Type: application/json" localhost:9200/_search \
-d @- <<EOF | jq .
{
    "query": {
        "match_phrase": {
            "address": "mill lane"
        }
    }
}
EOF
