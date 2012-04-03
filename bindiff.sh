#!/bin/sh

cmp -l "$1" "$2" |
while read offset var1 var2
do
    printf "0x%08X 0x%02x 0x%02x\n" $((offset-1)) 0$var1 0$var2
done
