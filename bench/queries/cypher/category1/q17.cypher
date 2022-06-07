:params {
    celex1: '<http://publications.europa.eu/resource/celex/71991L0687FRA_88000>'
     
}

Match
    (n_cellarId)-[:sameAs]->(n_nimId),
    (n_cellarId)-[:measure_national_implementing_implements_resource_legal]->$celex1
    (n_exp)-[:expression_belongs_to_work]->(n_cellarId),
    (n_exp)-[:expression_uses_language]->(n_exprLanguage),
    (n_exp)-[:expression_title]->(n_title)

    Optional Match (n_type)<-[:manifestation_type]-(n_manif)-[:manifestation_manifests_expression]->(n_exp)
    Optional Match (n_cellarId)-[:measure_national_implementing_implemented_by_country]->(n_country)
    Optional Match (n_s)-[:transposition_deadline_transmitted]->(n_transposition_deadline_transmitted)
    Optional Match (n_s)-[:transposition_notification]->(n_dateNotification)
    Optional Match (n_s)-[:annotatedSource]->(n_cellarId)
    Optional Match (n_s)-[:annotatedProperty]->(:measure_national_implementing_implements_resource_legal)
    Optional Match (n_s)-[:annotatedTarget]->({id: $celex1})

    Optional Match (n_cellarId)-[:measure_national_implementing_declaration_transposition_member-state]->(n_transpositionStatus)
    Optional Match (n_cellarId)-[:measure_national_implementing_name_official_journal]->(n_ojName)
    Optional Match (n_cellarId)-[:measure_national_implementing_number_official_journal]->(n_ojNumber)
    Optional Match (n_cellarId)-[:measure_national_implementing_date_official_journal]->(n_ojDate)
    Optional Match (n_cellarId)-[:measure_national_implementing_page_official_journal]->(n_ojPage)
    Optional Match (n_cellarId)-[:resource_legal_date_entry-into-force]->(n_entryIntoForce)
    Optional Match (n_cellarId)-[:measure_national_implementing_reference_commission]->(n_referenceCommission)
    Optional Match (n_cellarId)-[:measure_national_implementing_national_website_link]->(n_website)
    Optional Match (n_cellarId)-[:eli]->(n_eli)
    Optional Match (n_cellarId)-[:work_date_document]->(n_workDateDocument)



Where
    n_nimId.id =~ '(.*?)resource\/him(.*?)'

Return 
    n_country as country,
    n_nimId as min_id,
    n_workDateDocument as work_date_document,
    n_transpositionDeadline as transposition_deadline,
    n_transpositionStatus as transposition_status,
    n_ojName as oj_name,
    n_ojNumber as oj_number,
    n_ojDate as oj_date,
    n_ojPage as oj_page,
    n_exprLanguage as expr_language,
    n_title as title,
    n_entryIntoForce as entry_into_force,
    n_referenceCommission as reference_commission,
    n_dateNotification as date_notification,
    n_website as website,
    n_eli as eli,
    collect(distinct n_type) as types,
    coalesce(transposition_deadline_transmitted.id, "1001-01-01") as transposition_deadline,
    count(*) as count 

Order By 
    n_country.id, 
    n_nimId.id    