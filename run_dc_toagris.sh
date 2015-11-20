#!/bin/bash
#Author : Papoutsis Georgios Agroknow

#dir at testing agris vm /home/agris/JAVA/XSL_TRANSFORMER/translet-master

#usage java -jar gr.agroknow.metadata.translet.Translet <xsl file> <input folder> <output folder> <bad folder>



$TRANSLET=~/JAVA/XSL_TRANSFORMER/translet-master/dist/translet.jar
#/home/agris/JAVA/XSL_TRANSFORMER/translet-master/dist/translet.jar
$XSL=/home/agris/JAVA/XSL_TRANSFORMER/translet-master/XSL/DC_OAI_Final.xsl
#AGRIS_to_OpenAIRE.xsl
 #DC_OAI_Final.xsl
$IN=/home/agris/JAVA/XSL_TRANSFORMER/translet-master/IN
$OUT=/home/agris/JAVA/XSL_TRANSFORMER/translet-master/OUT
$BAD=/home/agris/JAVA/XSL_TRANSFORMER/translet-master/BAD




java -jar $TRANSLET $XSL $IN $OUT $BAD > txt


echo "transforming done!"

exit;
