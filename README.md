How to use this image
=====================

Instead of referencing the image ```ghcr.io/requarks/wiki:2``` during installation of wiki.js, you can reference our image
```ghcr.io/ctrl-alt-it/our-wiki-build/our-wiki-build:latest``` which has Postgres TLS validation disabled.

This helps when deploying in an environment where the Postgres database is only reachable via private network and
therefore does not have a trusted SSL certificate.

DigitalOcean for example uses SSL certs to connect to their managed Postgres instance, but the certificate is
self-signed and sometimes expired.
