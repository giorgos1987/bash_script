#!/bin/bash
#Author : Papoutsis Georgios Agroknow

#voa3R enrishment

for file in *.xml;
 do 

find ./$file -type f -exec sed -i 's/for_replace/'$file'/g' {} \;

done

find ./ -type f -exec sed -i 's/\.xml<\/identifier>/<\/identifier>/g' {} \;



