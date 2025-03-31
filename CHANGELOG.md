# Changelog

## 1.27.4

* Upgrade to Nginx 1.27.4.

## 1.27.1

* Upgrade to Nginx 1.27.1.

## 1.25.4

* Upgrade to Nginx 1.25.4.

## 1.25.3

* Upgrade to Nginx 1.25.3.
* Switch from Alpine to Debian (Bookworm).

## 1.25.2

* Upgrade to Nginx 1.25.2.
* Upgrade to Alpine 3.18.

## 1.23.3

* Upgrade to Nginx 1.23.3.

## 1.19.5

* Upgrade to Nginx 1.19.5.

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

* Upgrade to Nginx 1.17.7.

## 1.16.1

* Use Nginx 1.16.1 alpine as upstream base image.
* Change `STOPSIGNAL` to `SIGQUIT`.
