#!/bin/bash

if [ "$#" -eq 1 ]; then
  if [ "$1" == "c" ] || [ "$1" == "clean" ]; then
    echo "Cleaning..."
    rm -rf build_isolated devel_isolated install_isolated
    catkin_make_isolated --install --use-ninja
    source install_isolated/setup.bash
    exit 0
  else
    echo "Invalid argument. Usage: $0 [c|clean]"
    exit 1
  fi
fi

catkin_make_isolated --install --use-ninja
source install_isolated/setup.bash


