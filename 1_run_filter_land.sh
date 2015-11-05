#!/bin/bash
#find . -mindepth 1 -maxdepth 5 -type d -printf "/var/www/html/XML_Output/2013/%P/\n" >> ~/2013_dirs_agris.txt


while read line
do
    name=$line
grep -irn  "agrarian law\|agrarian reform\|agrarian structure of land\|Agricultural land management\|agricultural landscape\|agroforestry
systems\|Agropastoralism\|Alienation of land\|animal husbandry\|aquaculture\|land alienation\|lienated land\|Capital value of land\|cadastre
administration\|CEDAW land\|co-ownership rights\|Common land\|common law on land\|Common rights\|Communal territory\|community forestry\|Conflict of
interest\|contract farming\|CEDAW\|Customary land rights\|customary rights\|customary law on land\|deforestation\|development agencies\|extensive land use\|Farm
tenancy\|farmers associations\|farmers organizations\|Forest law\|Geographical information systems\|customary law\|Grazing land rights\|grazing
lands\|indigenous land tenure\|indigenous lands\|intensive land use\|grazing rights\|land access\|Land acquisition\|land administration\|land area\|land
cadastre\|land clearing\|land collective ownership\|land concentration\|access to land\|land conflicts\|land consolidation\|land cover\|land cover mapping\|land
decentralization\|land degradation\|land development\|Land dispute\|land distribution\|land diversion\|land Dowry\|land economics\|land Eminent domain\|eminent
domain\|land environmentland expropriation\|land geomatics\|encroached land\|land grabbing\|land green belts\|land improvement\|land information systems\|land
grab\|land inheritance rights\|land investments\|Land law\|Land loans\|land management\|land map Scale\|land markets\|nature reserves\|land of Local
community\|land policies\|land property rights \|land reform\|land registration\|Land rent\|land rights in divorce\|land rights of orphans\|prescriptive
rights\|prescriptive property\|land rural planning\|Land speculation\|land suitability\|land Surveyors\|land tax\|land tenant\|land tenant's rights\|land
tenure\|Land tenure system\|land Territory\|land transfers\|land use mapping\|land use planning\|land Use rights\|Willing seller\|landlessness\|rural land use
planning\|landowners\|Latifundium\|lineage\|Lineage land\|land ownership\|marital property rights about land\|Matrilineal land\|Negotiated land
reform\|Notary\|Pastoral land rights\|Pastoral lands\|Patrilineal land\|Priest of the land\|marital property rights\|private ownership of land\|Property law
about land\|protected land areas\|public ownership of land\|rangelands\|Regularization of land ownership\|right of land access\|Right of land clearance\|Right
of first occupancy\|rural areas\|rural population\|Sacred woods\|scrublands\|right of access\|Security of land tenure\|security of tenure\|State
property\|Statute law\|suburban agriculture\|sustainable land management\|Tenant farmer\|Title deed\|Torrens cadastral system\|Torrens system\|Unclaimed
lands\|urban areas\|urban land development\|water management\|water rights\|zoning" >> ~/landportal/agris_all_landresources.txt $line

done < ~/landportal/dirs_agris.txt


# ~/2014_dirs_agris.txt
 
