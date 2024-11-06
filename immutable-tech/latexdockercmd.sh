#!/bin/sh
IMAGE=blang/latex:ubuntu
exec podman run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "pdflatex --shell-escape immutable-tech.tex"
