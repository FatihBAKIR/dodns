#!/bin/bash

DOMAIN=$1
RECORD=$2

doctl compute domain records list $DOMAIN --output json | jq -c '.[] | select(.name=="'$RECORD'") | .id'
