# resin-internet-mirror

This is a resin.io application. Beside installing the required software and
configuration for the access point, the `Dockerfile.template` also downloads
a list of websites recursively. The websites then get served on a webserver.


## Development

Run `make` to build a local docker image. It can run locally by executing:

```
docker run -p 8080:80 resin-internet-mirror
```

And open http://localhost:8080 in your browser.
