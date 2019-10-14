#!/bin/sh

curl -H "Content-Type: application/json" localhost:9200/_search \
-d @- <<EOF | jq .
{
    "size": 0,
    "aggs": {
        "group_by_state": {
            "terms": {
                "field": "state.keyword"
            }
        }
    }
}
EOF
