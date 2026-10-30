# Docker Nginx

## What is nginx?

Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Windows.

https://wikipedia.org/wiki/nginx

## How does this differ from upstream?

* We use `SIGQUIT` as the [`STOPSIGNAL`](https://docs.docker.com/engine/reference/builder/#stopsignal) whereas upstream uses the default i.e. `SIGTERM`. Using `SIGQUIT` is better for our use-case as it ensures that nginx will perform a [graceful shutdown](https://docs.nginx.com/nginx/admin-guide/basic-functionality/runtime-control/).
* We remove the `acme`, `geoip`, `image-filter`, `njs` and `xslt` dynamic modules and `curl`, which upstream installs but we don't use. This keeps their libraries, and the vulnerabilities reported against them, out of the image. Install them in a derived image if you need them.

## Usage

```
docker run --name nginx zappi/nginx:latest
```

For more detailed usage documentation [see upstream](https://hub.docker.com/_/nginx?tab=description).

