Match (s{`resource_legal_in-force`: 'true'})
    Optional Match (s)-[:resource_legal_id_celex]->(celex)
Where
    date(s.`resource_legal_date_entry-into-force`) <= date('2017-03-01')
    and
    date(s.`resource_legal_date_entry-into-force`) > date('2017-03-01')
    and
    date(s.`resource_legal_date_end-of-validity`) <> date('1001-01-01')
    and
     not exists(
          ({`manifestation_official-journal_part_durability`:'EPH'})-[:`manifestation_manifests_expression`]->()-[:`expression_belongs_to_work`]->(s)
        )
    and 
        s.`resource_legal_date_end-of-validity` < date("2017-03-01")
Return *
limit 100