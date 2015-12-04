#!/bin/bash

########################################
###Author Papoutsis Georgios AK
### java -jar <java_name.jar> <projects path> <CSV PATH> <DATASET>
########################################
BASE=/home/workflow/FREME
LOGS=${BASE}/LOG
ROOT=/home/workflow
JAVAPROJECTS=/home/workflow/java/PROJECTS_enrich/gr.agroknow.projects.jar
# depricated  ${ROOT}/java/PROJECTS_enrich/ProjectsEnrichment.jar
JAVA=/usr/bin/java

OUTPUTDIR=${BASE}/PROJECTS
DATASET="cordis-fp7"

  echo "$(date) | START records enrichment with projects          |" ${set} >> ${LOG}/PROJECT.log
  ${JAVA} -jar ${JAVAPROJECTS}  ${OUTPUTDIR} ${BASE}/ ${DATASET}
   echo "$(date) | PROJECTS  Done! step012enprojects.sh completed | ${SET} " >> ${LOG}/PROJECT.log #~/cron_ingest.log


exit;
