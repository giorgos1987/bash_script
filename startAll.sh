#! /bin/bash

#Author : Papoutsis Georgios
#Description: Run for each center code CC and generate RDF from AgrisAP
#Input : ~/agris_app/Convert2RDF/convert2RDF/applications/2015/${CC}
#Output: ~/agris_app/Convert2RDF/convert2RDF/applications/2015_rdf/2015

for CC in AL  BG  ID  IN  RU  SG  SK  US  XF
do
./convertRDF.sh /home/agris/agris_app/workspace/work/work/AGRIS_ISSN_URI.txt /home/agris/agris_app/workspace/work/work/AGRIS_ARN_ISSN.txt  ~/agris_app/Convert2RDF/convert2RDF/applications/2015/${CC} ~/agris_app/Convert2RDF/convert2RDF/applications/2015_rdf/2015
#./convertRDF.sh ../work/AGRIS_ARN_ISSN.txt ../work/AGRIS_ISSN_URI.txt ../work/agrovocURILabelMappings.txt /work/agris/XML_Output /work/agris/RDF_Output 1975 2>&1 > /d$
done


exit;
