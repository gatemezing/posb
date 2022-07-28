//credit: Jesus Barrasa, Neo4J
// May 2022 
:params { scheme_id: "4026" }


match (w:work)-[:work_is_about_concept_eurovoc]->(:Concept)-[:inScheme]->( { identifier: $scheme_id})
with w, w.work_date_document as date order by date desc skip 0 limit 10
match (l)<-[:expression_uses_language]-(e)-[:expression_belongs_to_work]->(w)-[:work_is_about_concept_eurovoc]->(c)
optional match (w)-[:work_created_by_agent]->(a)
optional match (m)-[:manifestation_manifests_expression]->(e)
return w.uri as work, 
       e.uri as expr, 
       l.identifier as lang1, 
       e.expression_title as title, 
       w.work_date_document as date, 
       e.expression_abstract as abstract, 
       collect(w.work_id_document) as workIds, 
       collect(distinct labels(w)) as workTypes, 
       collect(distinct c.identifier) as subjects, 
       collect(distinct a.identifier) as authors, 
       collect(distinct m.manifestation_type) as mtypes, 
       collect(distinct m.manifestation_has_thumbnail) as thumbnails