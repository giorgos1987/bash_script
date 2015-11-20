#!/bin/bash


# live dir /home/agris/agrisMetaCat
SET=AL1
FORMAT=AGRIS
OAITARGET="http://agris.fao.org/oai"
OAIFORMAT="agrisap"

ROOT=/home/agris
HARVESTER=${ROOT}/JAVA/harvester/harvestingSetD.jar
JAVA=/usr/bin/java
OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}
#/home/agris/agrisMetaCat/AL1

#
FROM=2015-07-15
#2000-01-01
UNTIL=2015-09-15
#2015-07-15
#2016-01-01


#   ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT}  ${UNTIL} ${FROM}  ${oaiset}




for oaiset in AL1
do
  echo "harvesting AL1" ${set}
#  ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT} ${oaiset}
${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT}  ${UNTIL} ${FROM}  ${oaiset}

done
echo "Harvesting AL1 Done!"
