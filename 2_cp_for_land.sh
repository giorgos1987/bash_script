#!/bin/bash




while read line
do
    name=$line
    echo  "$( cut -d ':' -f 1 <<< $line )"  >> ~/landportal/agris_land_filenames.txt
           # echo "Text read from file - $name"
            ###echo  "$( cut -d ':' -f 1 <<< '$line' )" >> ~/agris_land_2015_filenames.txt

done < ~/landportal/agris_all_landresources.txt
#~/landportal/agris_2014_landresources.txt
         # agris_2015_landresources.txt
         #~/landportal/agris_all_landresources.txt    #$1 read filenames and correct



while read F  ; do
        cp $F /home/giopap/landportal/agris_land/       #/home/giopap/landportal/
done <  ~/landportal/agris_land_filenames.txt

#~/landportal/agris_land_2014_filenames.txt  ###the cleaned filenames  xxxxx/xxxx/xx.xml
         #agris_all_landresources.txt



exit;
