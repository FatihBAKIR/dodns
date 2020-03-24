#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

DOMAIN=$1
NAME=$2
ID=`$DIR/get_id.sh $DOMAIN $NAME`
IP=$3

doctl compute domain records update $DOMAIN --record-id $ID --record-type A --record-ttl 360 --record-data $IP
