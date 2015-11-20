#!/bin/bash

SET=greenet
FORMAT=oai_lom

OAITARGET="http://greenet-education.eu/greenet/oai"

OAIFORMAT="oai_lom"

ROOT=/home/agris
HARVESTER=${ROOT}/JAVA/harvester/harvestingSet.jar
JAVA=/usr/bin/java
OUTPUTDIR=~/greenet





for oaiset in   greenideas_collection_pathways greenideas_collection_resources greenideas_collection_institution_Natural_Europe   greenideas_collection_institution_GRNET greenideas_collection_institution_GreeNET greenideas_collection_institution_Ellinogermaniki_Agogi  greenideas_collection_institution_ellinogermaniki
do
  echo "harvesting AGLRGSG" ${set}
  ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT} ${oaiset}
done
echo "Done!"
