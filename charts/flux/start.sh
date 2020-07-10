#!/usr/bin/env bash

kubectl create ns flux
helm template flux . -f local-values.yaml --namespace flux > flux.yaml
kubectl -n flux apply -f flux.yaml
