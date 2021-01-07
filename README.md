# elastic-docker

This project is intended to be a quick way of bringing the Elastic Stack up behind a proxy.

## Elastic Stack (https://github.com/elastic)

   - Elasticsearch
   - Logstash
   - Kibana

## Traefik (https://github.com/traefik/traefik)

- Traefik has been set up as a proxy for kibana access
- Dashboard available at https://localhost/dashboard/
- username:password -> traefik/traefik

## Usage

- Deploy by running docker-compose up at the root of the project.
- Access Kibana with: 
   - https://localhost/kibana/
   - https://kibana.localhost/
- username:password -> kibana:kibana


## Scripts
- Credentials can be changed by running ./bin/set-passwords.sh
- GeoIP DB can be set by running ./bin/set-geoipdb.sh (GeoLite2-ASN.mmdb or GeoLite2-City.mmdb need to be located in ./docker/elastic/logstash/db)
