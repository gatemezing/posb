// credit: @gatemezing
// adding parameter - Date: June 2022 
:params { res_uri: "http://publications.europa.eu/resource/cellar/6df75a83-c084-11e3-86f9-01aa75ed71a1", lang_uri: "http://publications.europa.eu/resource/authority/language/POR" }
MATCH (s)-[:sameAs*]->(w {uri:$res_uri})
MATCH (l:Resource{uri:$lang_uri})<-[:expression_uses_language]-(e)-[:expression_belongs_to_work]->(w {uri: $res_uri})
OPTIONAL MATCH (m)-[:manifestation_manifests_expression]->(e)
RETURN s.uri as s,
       w.uri as w,
       m.uri as m,
       l.uri as l 