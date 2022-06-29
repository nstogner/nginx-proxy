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
