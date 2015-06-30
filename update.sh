#!/usr/local/bin/bash
# ###################################################
# DESC.: Update Dockerfile for each version directory.
#        Show some information on each version.
# ###################################################
set -e

# Script directory
cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

for version in cron timer; do
  cp -pr src $version/
done
