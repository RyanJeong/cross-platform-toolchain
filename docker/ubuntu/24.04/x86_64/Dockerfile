# docker/ubuntu/<VER>/<ARCH>/Dockerfile
FROM ubuntu:24.04
LABEL maintainer="Munseong Jeong <ryan.m.jeong@hotmail.com>"

### --- per‑version Python selection --------------------------
ARG PYVER=<auto by directory>
COPY ../../install_python.sh /install_python.sh
RUN apt-get update && apt-get install -y \
  build-essential cmake ninja-build git swig \
  python3-pip software-properties-common curl ca-certificates \
  && /install_python.sh "$PYVER" \
  && rm -rf /var/lib/apt/lists/*

# Select target triple by directory name
ARG TARGET_TRIPLET=x86_64
ENV TARGET_TRIPLET=${TARGET_TRIPLET}
ENV CC=gcc CXX=g++
WORKDIR /workspace