#!/usr/bin/env bash

# Wait for the Elasticsearch container to be ready before starting Kibana.
echo "Stalling for Elasticsearch"
while true; do
    nc -q 1 elasticsearchnode1 9200 2>/dev/null && break
done

echo "Starting Kibana"
kibana
