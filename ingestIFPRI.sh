#!/bin/bash
#Author : Papoutsis Georgios Agroknow

SET=p15738coll2
FORMAT=oai_dc

OAITARGET="http://cdm15738.contentdm.oclc.org/oai/oai.php"

OAIFORMAT="oai_dc"

ROOT=/home/agris
HARVESTER=${ROOT}/JAVA/harvester/harvestingSet.jar
JAVA=/usr/bin/java
OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}

for oaiset in p15738coll2
do
  echo "harvesting AGLRGSG" ${set}
  ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT} ${oaiset}
done
echo "Done!"
