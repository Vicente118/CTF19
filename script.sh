#!/bin/bash

docker build -t ctf19 .
docker run -it --cap-add=NET_ADMIN --device=/dev/net/tun --name ctf19_instance ctf19
