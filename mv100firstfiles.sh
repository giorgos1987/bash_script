#!/bin/bash
#move 100 first files

for file in $(ls -p | grep -v / | tail -100)
do
mv $file /other/location
done


#!/bin/bash
for file in $(ls -p)
do
cp $file /other/location
iconv -f us-ascii -t UTF-8 $file > /var/www/html/organic/sites/default/files/UTF8_organic_voa3r/$file
done
