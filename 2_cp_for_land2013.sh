#!/bin/bash



#while read line
#do
#    name=$line
#    echo  "$( cut -d ':' -f 1 <<< $line )"  >> ~/landportal/agris_land_2013_filenames.txt
           # echo "Text read from file - $name"
            ###echo  "$( cut -d ':' -f 1 <<< '$line' )" >> ~/agris_land_2013_filenames.txt

#done < ~/landportal/agris_2013_landresources.txt
         # agris_2015_landresources.txt
         #~/landportal/agris_all_landresources.txt    #$1 read filenames and correct



while read F  ; do
        cp $F /home/giopap/landportal/2013_agris_land/       #/home/giopap/landportal/
done < ~/landportal/agris_land_2013_filenames.txt  ###the cleaned filenames  xxxxx/xxxx/xx.xml
         #agris_all_landresources.txt



exit;
