#!/bin/sh

curl -H "Content-Type: application/json" localhost:9200/_search \
-d @- <<EOF | jq .
{
    "query": {
        "bool": {
            "must": [
                {"match": {"age": "40"}}
            ],
            "must_not": [
                {"match": {"state": "ID"}}
            ]
        }
    }
}
EOF
