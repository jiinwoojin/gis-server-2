#! /bin/bash

trap 'exit' ERR
set -E

apachectl start
