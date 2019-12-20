#!/usr/bin/env sh
helm upgrade plate ./deploy/helm/plate \
  --values=./deploy/helm/values/prod/values.yaml \
  --set=spec.template.metadata.labels.date=`date +'%s'` \
  --namespace=default
