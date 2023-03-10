#!/bin/bash

if [[ $(uname -s) == "Linux" ]]; then
  if [[ -f /etc/debian_version ]]; then
    apt-get update -y
    apt-get install nginx -y
  elif [[ -f /etc/redhat-release ]]; then
    yum install nginx -y
  else
    echo "Unsupported OS. Nginx installation aborted."
    exit 1
  fi
else
  echo "Unsupported OS. Nginx installation aborted."
  exit 1
fi
