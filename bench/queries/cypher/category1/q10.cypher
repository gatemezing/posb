// credit: @gatemezing
// 31rst, May 2022
// TODO: review with data using keepLangTag:true
:params { lang_uri: "http://publications.europa.eu/resource/authority/language/ENG", langvalue: "ENG" }

match (l)<-[:expression_uses_language]-(e)-[:expression_belongs_to_work]->(w)
where l.uri=$lang_uri AND l.expression_title =~ '(.*?)microsoft(.*?)'
match (m)-[:manifestation_manifests_expression]->(e)
optional match (m1)-[:manifestation_manifests_expression]->(e1), (m1)-[:manifestation_has_thumbnail]->(th)
optional match (w)-[:work_created_by_agent]->(:Concept)-[:prefLabel]->(pfl)
where pfl.prefLabel=$langvalue
optional match (w:work)-[:work_is_about_concept_eurovoc]->(:Concept)-[:prefLabel]->(sbl) 
//TODO: filter by lang in sbl


return collect(distinct w.uri) as cellarURIs, 
        l.expression_title as title,
        l.identifier as lang1,
        collect(distinct m.manifestation_type) as mtypes,
        collect(distinct m.manifestation_has_thumbnail) as thumbnails,
        collect(distinct labels(w)) as workTypes,
        collect(distinct pfl.identifier) as authors,
        w.work_date_document as date,
        collect(distinct sbl.identifier) as subjects, 
        collect(w.work_id_document) as workIds 

     skip 0 limit 100
