#!/bin/bash

docker build -t ctf19 .
docker run -it --name ctf19_instance ctf19
