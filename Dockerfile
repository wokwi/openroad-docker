# OpenRoad with GUI for MPW-3 and MPW-4
# Copyright (C) 2021 Uri Shaked
#
# SPDX-FileCopyrightText: © 2021 Uri Shaked <uri@wokwi.com>
# SPDX-License-Identifier: MIT

FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y git

RUN mkdir /build
WORKDIR /build

RUN git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD
WORKDIR /build/OpenROAD
RUN ./etc/DependencyInstaller.sh -dev
RUN ./etc/Build.sh

WORKDIR /build/OpenROAD/build
RUN make install

ENTRYPOINT ["openroad"]
