#!/usr/bin/env bash

helm template helm . -f local-values.yaml --namespace flux > helm.yaml
kubectl apply -f crds/helmrelease.yaml
kubectl -n flux apply -f helm.yaml
