#!/bin/bash
#Author : Papoutsis Georgios
SET=GREENIDEAS
FORMAT=DC
#DIDL
OAITARGET="http://greenet-education.eu/greenet/oai"
#?verb=ListRecords&metadataPrefix=oai_lom&set=greenideas_collection_pathways
#http://orgprints.org/cgi/oai2"
OAIFORMAT="oai_lom"
#"didl"

#OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}


ROOT=/home/agris
#HARVESTER=${ROOT}/java/harvester/harvesting.jar
HARVESTER=${ROOT}/JAVA/harvester/harvestingSet.jar

JAVA=/usr/bin/java
OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}

 echo "harvesting ORGEPRINTS"
 ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT} greenideas_collection_pathways

echo "Done!"
