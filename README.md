# A Helm Chart for DRY microservice deployments


## Introduction

This helm chart deploys a microservice for demonstration purposes with Crossplane claims

## Prerequisites

- Kubernetes cluster 1.10+
- Helm 3.0.0+
- Crossplane
- Crossplane compositions installed (TBD)

## Installation

### Add Helm repository

```bash
helm repo add bwehrle-ms ...
helm repo update
```

### Configure the chart

The following items can be set via `--set` flag during installation or configured by editing the `values.yaml` directly (need to download the chart first).

#### Configurations

For other configurations, please see the [example values](example-httpbin-values.yaml) file. This file lists the configurable parameters of the microservice chart and the default values.

## Using the chart

See [examples.md](examples.md) for how to use the Chart and deploy a sample service.

## License

[Apache License 2.0](/LICENSE)
# helm-service-jresource-poc
