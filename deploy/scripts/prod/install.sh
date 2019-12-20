#!/usr/bin/env sh
helm install plate ./deploy/helm/plate \
  --values ./deploy/helm/values/prod/values.yaml \
  --namespace default
