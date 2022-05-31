// credit: @gatemezing
// 32, MAy 2022

:params { concept_id: "4026", authorcode: ["CURIA", "GCEU"] }

match (work)-[:work_is_about_concept_eurovoc]->(:Concept)-[:inScheme]->( { identifier: $concept_id})
match (work)-[:work_created_by_agent]->(a)
where a.identifier IN $authorcode
with work, work.work_date_document as date order by date desc skip 0 limit 10
match (exl)<-[:expression_uses_language]-(expr)-[:expression_belongs_to_work]->(work)
optional match (man)-[:manifestation_manifests_expression]->(expr)
optional match (work)-[:work_is_about_concept_eurovoc]->(expr1), (work)-[:work_created_by_agent]->(ag)
return  work.uri as work, 
        expr.uri as expr,
        expr.expression_abstract as abstracts, 
        exl.identifier as lang,
        collect(distinct  expr.expression_title ) as title, 
	work.work_date_document as date, 
	collect(distinct work.work_id_document) as workIds, 
	collect(distinct labels(work)) as workTypes, 
	collect( distinct expr1.identifier) as subjects, 
	collect( distinct ag.identifier) as authors, 
	collect( distinct man.manifestation_type) as mtypes,
    collect( distinct man.manifestation_has_thumbnail) as thumbnails