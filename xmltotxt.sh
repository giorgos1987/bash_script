#!/bin/bash

Author: Georgios Papoutsis

SUFF=xml
suffix=txt
for i in  *.xml;
 do
 filename=$(basename "$i")

filename="${filename%.*}"

NAME=${filename}.${suffix}

cp ./$i ./$NAME

# l =  ${i%txt}
#echo ${filename}

#    mv -f $i ${i%.$SUFF}.$suff

  #ff =  "basename  '${file%.xml}'"
# mv $t "$t.txt" ./
 #mv b  $file.txt
done
