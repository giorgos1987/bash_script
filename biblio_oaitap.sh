#!/bin/bash

SET=TAPBIBLIO
FORMAT=oai_dc
OAITARGET="http://biblio.agroknow.com/oai"
OAIFORMAT="oai_dc"

ROOT=/home/agris
HARVESTER=${ROOT}/JAVA/harvester/harvesting.jar
JAVA=/usr/bin/java
OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}




#for oaiset in hdl_0_2
#do
  echo "harvesting MY0" ${set}
####################${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${FORMAT}
#${oaiset}

  ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT} ${oaiset}
