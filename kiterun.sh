#!/bin/sh
apt-get update -y
COUNTER=50
until [  $COUNTER -lt 10 ]; do
TOKEN="c9d719ba394709b4887dcd28f351fd772f70418747204a56e5" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
timeout 240m ~/.buildkite-agent/bin/buildkite-agent start
echo "yohoho"

     echo COUNTER $COUNTER
     let COUNTER-=1
done
