#!/bin/sh
# Script for converting to RDF
# Example of parameters usage:
#  /mappings/AGRIS_ARN_ISSN.txt
#  /mappings/AGRIS_ISSN_URI.txt
#  /input/agrovocURILabelMappings.txt
#  /XML_Output
#  /RDF_Output
#  1975

JAVA_HOME="/usr/lib/jvm/java-1.6.0-openjdk/"
PATH="/usr/lib/jvm/java-1.6.0-openjdk/bin"

if [ $# -lt 5 ]  # number of arguments passed to script
then
    echo "You have to specify at least 4 parameters: arn2issn, issn2uri, agrovocMapping, sourceDir, destDir"
    echo "Optionally, you can specify years to convert."
else
    echo "Use \"$3\" XML source directory"
    java -classpath ".:../lib/*" -Xss64M -Xmx2048M org.fao.oekc.RDFRecordsConverter "$@"
fi

exit



echo "$(date) triplification done for" $3 >> /home/agris/logs_agris/triplification.log
