#!/bin/bash

set -e

CONFIG_FILE=/root/.config/spop/spopd.conf

if [[ -z $USERNAME && -z $PASSWORD ]]
then
  echo You must provide env var USERNAME, PASSWORD
  exit 0
fi

sed -i "s/^spotify_username =.*$/spotify_username = ${USERNAME}/" $CONFIG_FILE
sed -i "s/^spotify_password =.*$/spotify_password = ${PASSWORD}/" $CONFIG_FILE

exec $@
