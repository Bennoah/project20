#!/bin/bash

# Author: Emmanuel B

# Description: Deletes docker images from docker host (note that the images are already on docker repository)

docker images > di

n=$'cat di | wc -l'

while [ $(cat di | wc -l) -gt 5 ]

do

docker rmi $(awk '{print $3}' di | tail -n +18 | xargs)

#if
done

