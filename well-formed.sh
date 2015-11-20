#!/bin/sh
# check well-formed
# FABRIZIO CELLI

# all XML files
LIST=`find . -type d`

# scan files
for file in $LIST; do
    direct=${file}
        if [ $direct != "." ]
        then
           xmlwf -e utf-8 $direct/*
        fi
done
