#!/bin/sh
cat <<EOF | base64 > secret.txt
{
  "auths": {
    "https://index.docker.io/v1/": {
      "username": "$1",
      "password": "$2"
    }
  }
}
EOF
value=`cat secret.txt`
rm secret.txt

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: dockerhub-image-pull-secret
  namespace: default
type:  kubernetes.io/dockerconfigjson
data:
  .dockerconfigjson: |
    $1
EOF