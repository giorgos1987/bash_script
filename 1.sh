#!/bin/bash

SET="ORGEPRINTS"
FORMAT="LOM"
ROOT=/home/workflow

LOGS=/home/workflow/dataflows/010ingestion/scripts/OEORGANICEPRINTS/CRON_scripts/logs
METADATA=${ROOT}/dataflows/010ingestion/metadata
INPUTDIR=/home/workflow/dataflows/010ingestion/scripts/OEORGANICEPRINTS/CRON_scripts/2_filtered
#${METADATA}/020filtered/${FORMAT}/${SET}
OUTPUTDIR=/home/workflow/dataflows/010ingestion/scripts/OEORGANICEPRINTS/CRON_scripts/3_identified
#${METADATA}/030identified/${FORMAT}/${SET}
DUPLICATEDIR=/home/workflow/dataflows/010ingestion/scripts/OEORGANICEPRINTS/CRON_scripts/3_dublicate
#${METADATA}/031duplicate/${FORMAT}/${SET}
SUSPICIOUSDIR=/home/workflow/dataflows/010ingestion/scripts/OEORGANICEPRINTS/CRON_scripts/3_suspicious
#${METADATA}/032suspicious/${FORMAT}/${SET}
#IDENTIFIER=${ROOT}/java/identifier/LOMParser.jar
JAVA=/usr/bin/java

echo "Identifying " $SET
#echo "$(date) | Identification ORGEPRINTS Done! | LOM" >>    ~/cron_ingest.log
#echo "===============================" >> ~/cron_ingest.log

echo "start coping xml files from dublicate folder to identified"

#copy numerical files only
# find ./ -name "[0-9]*.xml" -type f > list  #-exec echo > list {} \;

 ls ${DUPLICATEDIR}/[0-9]*.xml  > list
for i in `cat list`; do cp  ${DUPLICATEDIR}/$i ${OUTPUTDIR}/$i ;  done

##################cp  -rn   ${DUPLICATEDIR}/*.xml  ${OUTPUTDIR}

echo "done"

#/home/workflow/cron_workflow.txt
