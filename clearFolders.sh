#!/bin/bash

#Author : Papoutsis Georgios


if [ "$#" != "1" ]
  then
    echo "Usage: createFolders.sh <SET> <FORMAT>"
  else
     ROOT=/home/agris
     HARVESTDIR=agrisMetaCat

   for dir in ES1  MY0  RU1   RUS  ESB   RU2   ESB AL1 F10 BG0  RU3  SK0 ID0  ORGEPRINTS  RUA TAPBIBLIO BR2  GE0  p15738coll2    RUC  BR3 IN1 PE2 RUD  TR2 BRF  greenet IN4 QB1  RUE  TTT BRK IN5 QT0 RUG UA0 CO0  QTA  RUH  US2 GREENIDEAS RUK   Voa3r_ORGEPRINTS DEC  RISM  RUP  XF0
     do
    REPOSITORY=${ROOT}/${HARVESTDIR}

    echo "SET : $dir"
    echo "DIRECTORY : $REPOSITORY"


    echo "clearing directories"
#    rm -r ${REPOSITORY}/${dir}/*.xml
    done
echo "$(date) The folders ES1  MY0  RU1   RUS  ESB   RU2   ESB AL1 F10 BG0  RU3  SK0 ID0  ORGEPRINTS  RUA TAPBIBLIO BR2  GE0  p15738coll2    RUC  BR3 IN1 PE2 RUD  TR2 BRF  greenet IN4 QB1  RUE  TTT BRK IN5 QT0 RUG UA0 CO0  QTA  RUH  US2 GREENIDEAS RUK   Voa3r_ORGEPRINTS DEC  RISM  RUP  XF0 cleared"
     
fi

exit;
