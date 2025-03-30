
## Microservice chart

`Release name` in this example designates the service name.

Deploy new httpbin microservice "staging" release
```sh
# Render locally
helm install httpbin-r1 microservice-0.0.1.tgz --values example-httpbin-values.yaml 

# Build helm chart locally
helm package charts/helm-microservice
helm install httpbin-r1 microservice-0.0.1.tgz --values example-httpbin-values.yaml --namespace httpbin
helm status httpbin-r1 --namespace httpbin
```


Uninstall httpbin microservice "staging" release
```sh
helm uninstall httpbin-r1 --namespace httpbin-helm
helm status httpbin-r1 --namespace httpbin-helm
```