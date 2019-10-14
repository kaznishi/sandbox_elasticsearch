#!/bin/sh

curl -H "Content-Type: application/json" -X POST "localhost:9200/test_accounts/_bulk?pretty&refresh" \
--data-binary "@07_bulk_insert_data.json" | jq .
