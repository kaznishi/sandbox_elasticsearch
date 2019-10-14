#!/bin/sh

curl -H "Content-Type: application/json" localhost:9200/_search \
-d @- <<EOF | jq .
{
    "query": {
        "match_all": {}
    },
    "sort": [
        { "account_number": "asc" }
    ],
    "from": 10,
    "size": 10
}
EOF
