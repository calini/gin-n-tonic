#!/usr/bin/env sh
helm install plate ./deploy/helm/plate \
  --values ./deploy/helm/values/dev/values.yaml \
  --namespace dev
