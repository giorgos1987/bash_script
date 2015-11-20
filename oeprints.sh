
#!/bin/bash

SET=ORGEPRINTS
#oeorganiceprints
FORMAT=LOM
OAITARGET="http://aglr.agroknow.gr/organic-edunet/oai"
OAIFORMAT="oai_lom"
ROOT=/home/agris
HARVESTER=${ROOT}/JAVA/harvester/harvestingSet.jar

OUTPUTDIR=${ROOT}/agrisMetaCat/${SET}

#${ROOT}/java/harvester/harvesting.jar
JAVA=/usr/bin/java

FROM=2000-01-01
UNTIL=2016-01-01



for oaiset in aglr_collection_20
do
  echo "$(date) | START harvesting             |" # ${set} >> ${LOGS}/cron_ingest.log
  ${JAVA} -jar ${HARVESTER} ${OAITARGET} ${OUTPUTDIR}/ ${OAIFORMAT}  ${oaiset}   # ${UNTIL} ${FROM}    ${oaiset}
done
 echo "$(date) |Harvesting for ORGEPRINTS Done! Step010ingestion completed | ${SET} ${FORMAT}"
#>> ${LOGS}/cron_ingest.log #~/cron_ingest.log


exit;
