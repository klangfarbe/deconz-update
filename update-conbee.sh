#!/bin/bash

mkdir -p deconz firmware

docker run -it --rm --entrypoint "/firmware-update.sh" --privileged --cap-add=ALL -v `pwd`/firmware:/usr/share/deCONZ/firmware -v /dev:/dev -v /lib/modules:/lib/modules -v /sys:/sys marthoc/deconz
