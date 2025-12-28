FROM ubuntu:22.04

LABEL maintainer="Uzair Khan"

RUN groupadd -r test && useradd -r -g test uzair
