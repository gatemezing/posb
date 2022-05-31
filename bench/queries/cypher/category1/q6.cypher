// credit: Jesus Barrasa, Neo4J
:params { concept_id: "3493", agent_id: "EP", lang_uri: "http://publications.europa.eu/resource/authority/language/ENG" }

// Parameterising the query is best practice but also makes it easy to run tests with different values instead of hardcoding. 
// I've tried other combinations:
//       concept_id: "3493", agent_id: "OP_DATPRO" 
//       concept_id: "5404", agent_id: "EC" 

match ({ uri: $lang_uri })<-[:expression_uses_language]-(expr)-[:expression_belongs_to_work]->(work)-[:work_is_about_concept_eurovoc]->(:Concept {identifier: $concept_id}),  (work)-[:work_created_by_agent]->({identifier: $agent_id })
with work, work.work_date_document as date order by date desc limit 10
match (a)-[:work_created_by_agent]-(work:Resource)-[:work_is_about_concept_eurovoc]->(c) 
match (exl)<-[:expression_uses_language]-(expr)-[:expression_belongs_to_work]->(work)
optional match (man)-[:manifestation_manifests_expression]->(expr)
return  work.uri as work, 
        expr.expression_abstract as abstract, 
        collect(distinct case when exl.uri = $lang_uri then expr.expression_title else "" end ) as title, 
	work.work_date_document as date, 
	collect(distinct work.work_id_document) as workIds, 
	collect(distinct labels(work)) as workTypes, 
	collect( distinct c.identifier) as subjects, 
	collect( distinct a.identifier) as authors, 
	collect( distinct man.manifestation_type) as mtypes



