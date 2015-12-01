
#!/bin/bash

ROOT=/home/user
INDEXER_RUNTIME=/home/user/setup/elastic/indexer_runtime
JAVA=/usr/lib/jvm/java-6-openjdk/bin/java
DIR_AGRIF=/home/user/setup/AGRIF/OMICSFAJ #OMICSJFPT #OMICSJNFS #JPPMOMICS #HORPB #FIA=brk  #JNFS #FAJ   #JFPT   #BRK #/TR1 #/RJOAS   #RU2
#/home/user/setup/AGRIF/TEST
INDEXER=agro-indexer-1.0-SNAPSHOT.jar
#/home/user/setup/JAVA/agdataplatform/agro-indexer/target
FORMAT=agrif



echo "Indexing START  for TEST AGRIF  $(date)" >> /home/user/scripts_cron/indexAGRIF.log

cd /home/user/setup/JAVA/agdataplatform/agro-indexer/target
${JAVA} -jar ${INDEXER} --bulk-size 1000 --root-directory ${DIR_AGRIF} --runtime-directory ${INDEXER_RUNTIME} --file-format ${FORMAT} $*
#>> /home/user/scripts_cron/index_log.txt



echo "Indexing DONE for TESTAGRIF  at $(date)" >> /home/user/scripts_cron/indexAGRIF.log

echo "Indexing DONE for TESTAGRIF  at "  ${DIR_AGRIF}

exit;
