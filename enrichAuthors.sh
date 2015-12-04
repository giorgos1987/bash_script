#!/bin/bash

########################################
###Author Papoutsis Georgios AK
########################################
SET=PACT
BASE=/home/workflow/workflow_akif
#/home/workflow/dataflows/010ingestion/scripts/ACT/CRON_scripts
LOGS=${BASE}/logs
ROOT=/home/workflow
NORMALIZER=${ROOT}/java/PROJECTS_enrich/ProjectsEnrichment.jar
JAVA=/usr/bin/java
OUTPUTDIR=${BASE}/1_projects

  echo "$(date) | START records enrichment with projects          |" ${set} >> ${LOGS}/cron_ingest.log
  ${JAVA} -jar ${NORMALIZER}  ${OUTPUTDIR}
   echo "$(date) |Harvesting  Done! step012enprojects.sh completed | ${SET} " >> ${LOGS}/cron_ingest.log #~/cron_ingest.log


exit;

