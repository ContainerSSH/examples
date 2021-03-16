#!/bin/bash
curl -s -X POST -d @user-example.json -H 'Content-Type: application/json' localhost:8181/v0/data/containerssh/auth | jq .
curl -s -X POST -d @config-example.json -H 'Content-Type: application/json' localhost:8181/v0/data/containerssh/config | jq .
