helm template jresource-app charts/helm-microservice  \
  -n jresources \
  -f test-app-values.yaml \
  --set region=$1 > test-app/app.yaml
