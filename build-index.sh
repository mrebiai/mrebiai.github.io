#!/usr/bin/env bash

docker run --rm -u $(id -u):$(id -g) -v $(pwd):/documents asciidoctor/docker-asciidoctor \
    asciidoctor -a data-uri -D public -o index.html README.adoc

touch public/.nojekyll
