MATCH (e:Resource)-[r:expression_belongs_to_work]->(w:Resource {uri:'http://publications.europa.eu/resource/cellar/6df75a83-c084-11e3-86f9-01aa75ed71a1'})
OPTIONAL MATCH
(m:Resource)-[r1:manifestation_manifests_expression]->(e:Resource)
RETURN r, e, w