## Updates of the queries by the CELLAR TEAM
Since the data changed from the first benchmark and some IDs updated, find below the updates in the SPARQL queries. Date: June 2nd, 2022. Authors: Sebastian T. and Emmanuelle G. 

## Category 1

- q6: subquery did not generate any matches. Changed dc:identifier.

- q13: similar to q17

- q15:  Replaced cdm:resource_legal_id_celex to make query match again.

- q16: Cellar ids in VALUES clause were invalid. Replaced them with new valid Cellar id.

- q17: replaced with latest version. 

- q19: replaced obsolete Cellar id to make query match again.

- q20: replaced obsolete Cellar id


## Category 2

- q7: some properties were deprecated about legal_event. Added info about normalization + change the value about filter for celex numbers

- q8: Changed FILTER(?pending="true"^^xsd:boolean) with FILTER(?pending="false"^^xsd:boolean)

- q9: Put FILTER(regex(?dossierId,'publicAccess')) in comment

- q10: Put FILTER (?resourceTypeLabel="en") in comment

- q16: Changed filter regex _0 for ?sAa, with _0, /1, /2

- q17: Changed filter regex _0 for ?sAa,  with _0, /1, /2

- q19: Changed filter regex _0 for ?sAa,  with _0, /1, /2

- q20: Changed filter regex _0 for ?sAa,  with _0, /1, /2

- q21: added three new values on the filter for ?idEP

- q22: added three new values on the filter for ?idEP

- q23: added three new values on the filter for ?idEP