# OpenRoad with GUI for MPW-3 and MPW-4
# Copyright (C) 2021 Uri Shaked
#
# SPDX-FileCopyrightText: © 2021 Uri Shaked <uri@wokwi.com>
# SPDX-License-Identifier: MIT

FROM ubuntu:20.04

RUN apt-get update && apt-get install -y git

RUN mkdir /build
WORKDIR /build

RUN git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD && \
    cd /build/OpenROAD && \
    ./etc/DependencyInstaller.sh -dev && \
    ./etc/Build.sh && \
    cd build && make install && \
    cd / && rm -rf /build

WORKDIR /
ENTRYPOINT ["openroad"]
