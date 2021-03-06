#!/bin/sh
# AIK-Linux/cleanup: reset working directory
# osm0sis @ xda-developers

aik="${BASH_SOURCE:-$0}";
aik="$(dirname "$(readlink -f "$aik")")";

cd "$aik";
if [ ! -z "$(ls ramdisk/* 2> /dev/null)" ] && [ "$(stat -c %U ramdisk/* | head -n 1)" = "root" ]; then
  sudo=sudo;
fi;
$sudo rm -rf ramdisk split_img *new.*;
echo "Working directory cleaned.";
exit 0;

