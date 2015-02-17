#!/bin/bash


#voa3r enrichment

sudo find ./ -type f -exec sed -i 's/<dc:title>/<header><identifier>for_replace<\/identifier><datestamp>change_date<\/datestamp><setSpec>oa_publication<\/setSpec><setSpec>ec_fundedresources<\/setSpec><setSpec>publication<\/setSpec><\/header><dc:title>/g' {} \;


sudo find ./ -type f -exec sed -i 's/<\/oai_dc:dc>/<about><provenance xmlns=\"http:\/\/www.openarchives.org\/OAI\/2.0\/provenance\" xsi:schemaLocation=\"http:\/\/www.openarchives.org\/OAI\/2.0\/provenance http:\/\/www.openarchives.org\/OAI\/2.0\/provenance.xsd\" xmlns:xsi=\"http:\/\/www.w3.org\/2001\/XMLSchema-instance\"><originDescription altered=\"true\" harvestDate=\"allagiharvestdate\"><baseURL>http:\/\/dspace.library.uu.nl\/oai\/dare<\/baseURL><identifier>library_id<\/identifier><datestamp>forreplacedate<\/datestamp><metadataNamespace>http:\/\/www.loc.gov\/mods\/v3<\/metadataNamespace><\/originDescription><\/provenance><\/about><\/oai_dc:dc>/g' {} \;

