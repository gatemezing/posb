Match 
  (n_uri)-[{id:"http://publications.europa.eu/ontology/cdm#work_datetime_transmission"}]->(n_date),																				 
  (n_uri)-[{id:"http://publications.europa.eu/ontology/cdm#expression_belongs_to_work"}]->(n_exp)-[{id:"http://publications.europa.eu/ontology/cdm#expression_uses_language"}]->(n_lang),																									 
 (n_exp)-[{id:"http://publications.europa.eu/ontology/cdm#manifestation_manifests_expression"}]->(n_manif),																		   
  (n_manif)-[{id:"http://publications.europa.eu/ontology/cdm#manifestation_type"}]->(n_type),				
  (n_uri)-[{id:"http://www.w3.org/2002/07/owl#sameAs"}]->(n_celex)								
Optional Match 
  (n_rectificationOrder)-[{id:"http://publications.europa.eu/ontology/cdm#resource_legal_corrects_resource_legal"}]->(n_uri),
  (n_rectificationOrder)-[{id:"http://publications.europa.eu/ontology/cdm#resource_legal_id_celex"}]->(n_rectificationOrderCelex)																										
where n_uri.id in [
	"http://publications.europa.eu/resource/cellar/6df75a83-c084-11e3-86f9-01aa75ed71a1",
	"http://publications.europa.eu/resource/cellar/3415a9e7-1d14-4017-95c1-aecec43462d5.0022",
	"http://publications.europa.eu/resource/cellar/771a3fe7-b701-438b-b8af-a94ed340fd63>"
	]
	and n_celex.id contains "62013TO0583"
return n_date.id as date, n_lang.id as lang, n_type.id as type, n_celex.id as celex, n_rectificationOrderCelex.id as rectificationOrderCelex 	
order by date desc, uri, lang, type