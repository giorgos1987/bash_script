#!/bin/bash

#Author : Georgios Papoutsis
#Change name in numeric


var=1
for file in *.xml;
 do

 mv $file  ./$var.xml
((var+=1))
done

exit;
