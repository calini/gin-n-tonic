#!/usr/bin/env sh
helm upgrade plate ./deploy/helm/plate --namespace=development --values=./deploy/scripts/dev/values.yaml
