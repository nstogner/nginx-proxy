# NGINX Proxy

```sh
docker build -t nstogner/nginx-proxy:latest .
docker run -e TARGET=https://example.com nstogner/nginx-proxy:latest
```

