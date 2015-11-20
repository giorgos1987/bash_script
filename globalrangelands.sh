#!/bin/bash

SET=
FORMAT=oai_dc

OAITARGET="http://globalrangelands.org/oai"

OAIFORMAT="oai_dc"

ROOT=/home/agris
HARVESTER=${ROOT}/JAVA/harvester/harvestingSet.jar
JAVA=/usr/bin/java
OUTPUTDIR=${ROOT}/agrisMetaCat/globalRange

#for oaiset in p15738coll2
#do
  echo "harvesting AGLRGSG" ${set}
  ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT} # ${oaiset}
#done
echo "Done!"
