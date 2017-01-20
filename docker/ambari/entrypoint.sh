#!/usr/bin/env bash

set -e

ambari-server install-mpack --mpack=/solr-service-mpack.tar.gz 
ambari-server start
tail -F /var/log/ambari-server/ambari-server.log

