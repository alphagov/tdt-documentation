#! /bin/bash
set -e

docker build . --tag tdt-documentation

docker run --rm -p 4567:4567 -p 35729:35729 -v $(pwd):/usr/src/docs -it tdt-documentation
