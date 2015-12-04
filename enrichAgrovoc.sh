#!/bin/bash

########################################
###Author     : Papoutsis Georgios AK
###Description: Enrich all agrisAP files from AGROVOC folder with agrovoc terms and uris
########################################
SET=PACT
BASE=/home/workflow/FREME
LOGS=${BASE}/LOG
ROOT=/home/workflow
#NORMALIZER=${ROOT}/java/PROJECTS_enrich/ProjectsEnrichment.jar
AGROVOC=/home/workflow/java/FREME_enrichers/agrovoc/agrovoc_enricher.jar
JAVA=/usr/bin/java
OUTPUTDIR=${BASE}/AGROVOC

  echo "$(date) | START records enrichment with AGROVOC    |" ${set} >> ${LOG}/AGROVOC.log
  ${JAVA} -jar ${AGROVOC}  ${OUTPUTDIR}
   echo "$(date) |Enrichment  Done! step012enprojects.sh completed " >> ${LOG}/AGROVOC.log #~/cron_ingest.log


exit;
