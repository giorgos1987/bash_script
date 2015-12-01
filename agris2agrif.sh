#!/bin/bash

export ZETTA_LANGUAGE_PROFILE_FOLDER=/home/ubuntu/java_jars/nsdl2akif/profiles

FORMAT="DC"
SET="test"
#oeorganiceprints
ROOT=/home/ubuntu
TRANSFORMER=${ROOT}/java_jars/agris2agrif/agris2agrif.jar
JAVA=/usr/bin/java
LOGS=${ROOT}/scripts/agris2agrif/logs

INPUTDIR=/home/ubuntu/agrisMetaCat/TR
#${ROOT}/scripts/agris2agrif/3_identified
OUTPUTDIR=${ROOT}/scripts/agris2agrif/4_transformed
BADDIR=${ROOT}/scripts/agris2agrif/41_rejected

#########################################################################################################################################################
#"Usage : java -jar agris2agrif.jar -input <INPUT_FOLDER> -output <OUTPUT_FOLDER> -bad <BAD_FOLDER> -set <SET_NAME>
#[-manifestation <MANIFESTATION_NAME>] [-mtdLanguage <METADATA_LANGUAGE>|-forceMtdLanguage <METADATA_LANGUAGE>] [-potentialLanguages <LANG1,LANG2,LANGn>]"
##########################################################################################################################################################

echo "Start transforming ${SET} at $(date)"  >>  ${LOGS}/cron_ingest.log
 ${JAVA} -jar ${TRANSFORMER} -input ${INPUTDIR}  -output ${OUTPUTDIR} -bad  ${BADDIR} -set  ${SET} # -mtdLanguage en # -potentialLanguages  ${POT_L}
echo "$(date) | Transformation Done for ${SET} | ${FORMAT}!" >>  ${LOGS}/cron_ingest.log;

#Remove cdata
find ${OUTPUTDIR}/ -type f -exec sed -i 's/<!\[CDATA\[//g' {} \;
find ${OUTPUTDIR}/ -type f -exec sed -i 's/\]\]>//g' {} \;

##############################################3TRANSFERING#########################################################3
KEY=/root/.ssh/wrkrootuserrsa
##ommite steps  step100lompublishing.sh step100lompublishing.sh
FROM=${OUTPUTDIR}
#/home/workflow/dataflows/010ingestion/scripts/OEORGANICEPRINTS/CRON_scripts/6_lom_transformed
TO=/home/user/setup/AGRIF/TEST
##### FOR AUTOMATIC INDEXING UNCOMMENT THE BELOW
#####scp -i $KEY -r $FROM/* user@83.212.115.164:${TO}

echo "$(date) Remove Transfered json files to prepared for next tranformation|"${SET} >> $LOGS/cron_ingest.log

#############remove tranformed files to be ready for retranform##############################################################################
rm -r ${OUTPUTDIR}/*
###################################################################################################################3

echo "$(date) Files Transfering Done!Step step500publication.sh completed|"${SET} >> $LOGS/cron_ingest.log
#########################3INDEXING#################################################################################3
echo "start indexing for ${SET} at $(date)" >> ${LOGS}/cron_ingest.log

#Run the remotely indexing script
#### FOR AUTOMATIC INDEXING UNCOMMENT THE BELOW
#### ssh -i $KEY user@83.212.115.164 '/home/user/scripts_cron/test_agrif.sh'


echo "indexing Done for ${SET} !Step step600indexing completed  at $(date)!" >> ${LOGS}/cron_ingest.log




exit;
