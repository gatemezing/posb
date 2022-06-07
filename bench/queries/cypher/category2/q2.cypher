// Q2:Total number of authors for these resource_legal:
// BGP: 1
 
// DEFINE input:inference "cdm_rule_set"
// Credit - François V. review by @gatemezing

//Match
//  (n_author)<-[:work_created_by_agent]-(n_lr{type: 'resource_legal'})-[:work_date_creation_legacy]->(n_datcre)
//Where
 //  left(toLower(n_datcre.id),5) <> '2016-' 
//return 
 //   count(distinct [n_author.identifier, n_lr.identifier]) as count



MATCH (a)-[:work_created_by_agent]-(n:resource_legal)-[]->(d) 
 WHERE left(toLower(toString(n.work_date_creation_legacy)),5) <> '2016-' 
return 
 count(distinct [a.identifier, n.identifier]) as count
  //count: 2501