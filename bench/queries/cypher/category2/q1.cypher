// Q1:Total number of resource_legal:
// BGP: 1
 
// DEFINE input:inference "cdm_rule_set"
// DEFINE input:same-as "yes"
// credit: Neo4J by François V. , review by @gatemezing

//Match 
//(n_lr{type: 'resource_legal'})-[:work_date_creation_legacy]->(n_datcre)
//Where
//   left(toLower(n_datcre.id),5) = '2016-' 
//Return count(*) as total
// toal = 0

// by @gatemezing
MATCH (n:resource_legal)
WHERE left(toLower(toString(n.work_date_creation_legacy)),5) <> '2016-' 
RETURN count(*) as total 
// total = 962997





 

