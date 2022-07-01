# NGINX Proxy

```sh
docker build -t nstogner/nginx-proxy:latest .
docker run -e TARGET=https://example.com nstogner/nginx-proxy:latest
```

## Kubernetes

### Simple Deployment

```sh
kubectl apply -f ./kube/simple
kubectl port-forward svc/nginx-proxy 8080:80
```

In another terminal...

```sh
curl localhost:8080
```

### NGINX Default Backend

Install new default backend.

```sh
kubectl apply -f ./kube/nginx-default-backend/backend.yaml
```

Install NGINX ingress controller.

```sh
helm upgrade --install ingress-nginx ingress-nginx --version 4.1.4 \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace \
  --values ./kube/nginx-default-backend/ingress-values.yaml
```

Port forward to the ingress controller.

```sh
kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 8080:80
```

In another terminal, curl the ingress controller...

```sh
curl localhost:8080
```

