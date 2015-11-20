#!/bin/bash

SET=Voa3r_ORGEPRINTS
FORMAT=voa3r_dcds
#DC
#DIDL
OAITARGET="http://orgprints.org/cgi/oai2"
OAIFORMAT="voa3r_dcds"
#"oai_dc"
#"didl"

#OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}


ROOT=/home/agris
#HARVESTER=${ROOT}/java/harvester/harvesting.jar
HARVESTER=${ROOT}/JAVA/harvester/harvesting.jar

JAVA=/usr/bin/java
OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}

 echo "harvesting ORGEPRINTS"
 ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT}

echo "Done!"
