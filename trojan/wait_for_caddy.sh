#!/bin/sh

set -e

until [ `ls -A /ssl|wc -w` -eq 1 ]
do
  >&2 echo "SSL Certs is empty - Checking..."
  sleep 1
done

exec $@