// credit: Neo4J - François V.
// Date: June 2022
// small updated due to syntax error by @gatemezing, June 9th, 2022
:params { work_uri: "http://publications.europa.eu/resource/cellar/e85d7e2d-9308-41ec-8afc-fdb801373028" }

Match 
  (n_uri)-[{id:"http://publications.europa.eu/ontology/cdm#work_datetime_transmission"}]->(n_date),																				 
  (n_uri)-[{id:"http://publications.europa.eu/ontology/cdm#expression_belongs_to_work"}]->(n_exp)-[{id:"http://publications.europa.eu/ontology/cdm#expression_uses_language"}]->(n_lang),																									 
 (n_exp)-[{id:"http://publications.europa.eu/ontology/cdm#manifestation_manifests_expression"}]->(n_manif),																		   
  (n_manif)-[{id:"http://publications.europa.eu/ontology/cdm#manifestation_type"}]->(n_type),				
  (n_uri)-[{id:"http://www.w3.org/2002/07/owl#sameAs"}]->(n_celex)								
Optional Match 
  (n_rectificationOrder)-[{id:"http://publications.europa.eu/ontology/cdm#resource_legal_corrects_resource_legal"}]->(n_uri),
  (n_rectificationOrder)-[{id:"http://publications.europa.eu/ontology/cdm#resource_legal_id_celex"}]->(n_rectificationOrderCelex)							

where n_uri.id= $work_uri and n_celex.id contains "62013TO0583"
return n_date.id as date, n_lang.id as lang, n_type.id as type, n_uri.id as uri, n_celex.id as celex, n_rectificationOrderCelex.id as rectificationOrderCelex 	
order by date desc, uri, lang, type