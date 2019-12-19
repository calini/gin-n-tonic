#!/usr/bin/env sh
helm install plate ./deploy/helm/plate --namespace=development --values=./deploy/scripts/dev/values.yaml
