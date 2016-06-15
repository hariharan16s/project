#!/bin/bash

filename=$1;

for i in `cat $filename`; do echo $i ; done | sort | uniq -c | awk {'print $2 " " $1'} | sort -k2,2nr -k1,1
