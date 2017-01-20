#!/usr/bin/env bash

set -e

curl -i -uadmin:admin -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/blueprints/solr -d @blueprint.json

curl -i -uadmin:admin -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/clusters/solr -d @single-node-mapping.json

