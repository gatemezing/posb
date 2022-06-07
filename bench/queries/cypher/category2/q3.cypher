// Q3:Repartition of the authors for documents published in the OJ or 
// not published in the OJ (that query was working beginning of #this year,
// not anymore now, so that one would definitively be worth looking at!!)
// BGP: 2


Match
  (n_author)<-[:work_created_by_agent]-(n_lr{type: 'resource_legal'})-[:work_date_creation_legacy]->(n_datcre)
  Optional Match (n_lr)-[:`resource_legal_published_in_official-journal`]->(n_oj)
Where
   left(toLower(n_datcre.id),5) <> '2016-' 
return 
    count(distinct n_lr.identifier) as lrTotal, n_author, 
    case
        when n_oj is null then '0'
        else '1'
    end as boolOJ