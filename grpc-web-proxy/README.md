<h1 align="center">grpc-web-proxy</h1>

<div align="center">

gRPC-web proxy 🛰️

[![Docker test](https://github.com/kilroybot/grpc-web-proxy/actions/workflows/test-docker.yaml/badge.svg)](https://github.com/kilroybot/grpc-web-proxy/actions/workflows/test-docker.yaml)
[![Docs](https://github.com/kilroybot/grpc-web-proxy/actions/workflows/docs.yaml/badge.svg)](https://github.com/kilroybot/grpc-web-proxy/actions/workflows/docs.yaml)

</div>

---

## Overview

`grpc-web-proxy` is a proxy that translates gRPC-Web requests to gRPC requests.
You can use it to be able to communicate with gRPC services from the browser.

## Running

Using Docker:

```bash
docker run -it -p 13000:13000 \
  -e GRPC_WEB_PROXY_TARGET_HOST=localhost \
  -e GRPC_WEB_PROXY_TARGET_PORT=12000 \
  ghcr.io/kilroybot/grpc-web-proxy
```

And that's it!
You can now access your gRPC service from the browser using port 13000.
