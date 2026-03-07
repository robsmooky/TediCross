#!/bin/sh

node keepalive.js &
node dist/main.js -c data/settings.yaml
