
#!/bin/bash

#Author : Georgios Papoutsis
#Change name in numeric

#Description: The following script set null values to ARN 
# like an example from ARN = TR2015000300 to ARN = TR2015000400 sets null value to ags:ARN="TR2015000300

#END=400
for i  in $(seq 300 400);
do

find ./ -type f -exec sed -i "s/ags:ARN=\"TR2015000$i/ags:ARN=\"/g" {} \;


done

exit;
