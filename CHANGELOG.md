# Changelog

## 1.19.5

* Upgrade to nginx 1.19.5.

## 1.17.7-3

* Remove user directive.
* Expose and listen on port `8080` instead of `80`.
* Change owner of core files and directories to `nginx:nginx`.

## 1.17.7-2

* Change runtime user and group to `nginx:nginx`.
* Fix permission issue with `/var/cache/nginx`.

## 1.17.7-1

* Run as user `nobody` and group `nobody` instead of `root`.

## 1.17.7

* Upgrade to nginx 1.17.7.

## 1.16.1

* Use nginx 1.16.1 alpine as upstream base image.
* Change `STOPSIGNAL` to `SIGQUIT`.
