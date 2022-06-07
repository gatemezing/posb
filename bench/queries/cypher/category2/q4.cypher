Match 
    (n)
Optional 
    Match (n)-[:resource_legal_id_celex]->(celex)    
Where
    (
        date(n.`resource_legal_date_entry-into-force`) > date("2017-03-01")
     or
        date(n.`resource_legal_date_entry-into-force`) = date("1001-01-01")
    )
    and
        date(n.`resource_legal_date_end-of-validity`) >= date("2017-03-01")
    and 
        date(n.`resource_legal_date_entry-into-force`) <= date("2017-03-01")
    and
        date(n.`resource_legal_date_entry-into-force`) <> date("1001-01-01")
    and
        not exists( 
            ({`manifestation_official-journal_part_durability`:'EPH'})-[:manifestation_manifests_expression]->()-[:`expression_belongs_to_work`]->(n)
            )

Return *
Limit 100