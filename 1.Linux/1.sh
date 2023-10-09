#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "No root" 
   exit 1
else
   echo "root"
fi
