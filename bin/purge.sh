#!/bin/bash
# Purge traefik logs
read -r -p "Purge Traefik Logs? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    if rm -r -f ./var/log/traefik/*; then
        echo "Traefik logs purged"
    else
        echo "Purge failed" 
    fi       
else
    echo "Traefik logs not purged"
fi
# Purge elasticsearch node
read -r -p "Purge Elasticsearch Node? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    if rm -r -f ./mnt/elasticsearch/nodes/*; then
        echo "Elasticsearch node purged"
    else
        echo "Purge failed"
    fi     
else
    echo "Elasticsearch node not purged"
fi
