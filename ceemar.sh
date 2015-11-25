#!/bin/bash
 #replace oai:dc with record
 find ./*.xml -type f -exec sed -i  "1s/.*/<?xml version=\"1.0\"?><record>/g"  {} \;
 find ./*.xml -type f -exec sed -i   "s/<\/oai_dc:dc>/<\/record>/g"  {} \;


#sed -e  "s/\(.*\)<\/header>$/<\/header><metadata><dc xmlns:dc=\"http:\/\/purl.org\/dc\/elements\/1.1\/\"xmlns=\"http:\/\/www.openarchives.org\/OAI\/2.0\/oai_dc\/\">/g" ./*xml

#####find ./*.xml -type f -exec sed -i "s/\(.*\)<\/header>$/\1<\/header><metadata><dc xmlns:dc=\"http:\/\/purl.org\/dc\/elements\/1.1\/\"xmlns=\"http:\/\/www.openarchives.org\/OAI\/2.0\/oai_dc\/\">/g"  {} \;

find ./*.xml -type f -exec sed -i  "s/<\/header>*<dc/<\/header><metadata><dc xmlns:dc=test/g" {} \;
for file in *.xml;
 do
#       tac ./$file | sed  "/<\/header>/<\/header><metadata><dc testtttt|/q" | tac
 tac file | awk '!done && /<\/header>n/{done=1; sub(/&$/, "")}1' | tac
 done


find ./*.xml -type f -exec sed -i   "s/<about>/<\/dc><\/metadata><about>/g"  {} \;

#find ./ -type f -exec sed -i 's/<\/oai_dc:dc>/<about><provenance xmlns=\"http:\/\/www.openarchives.org\/OAI\/2.0\/provenance\"xsi:schemaLocation=\"http:\/\/www.openarchives.org\/OAI\/2.0\/provenance http:\/\/www.openarchives.org\/OAI\/2.0\/provenance.xsd\" xmlns:xsi=\"http:\/\/www.w3.org\/2001\/XMLSchema-instance\"><originDescription altered=\"true\" harvestDate=\"allagiharvestdate\"><baseURL>http:\/\/dspace.library.uu.nl\/oai\/dare<\/baseURL><identifier>library_id<\/identifier><datestamp>forreplacedate<\/datestamp><metadataNamespace>http:\/\/www.loc.gov\/mods\/v3<\/metadataNamespace><\/originDescription><\/provenance><\/about><\/oai_dc:dc>/g' {} \;

