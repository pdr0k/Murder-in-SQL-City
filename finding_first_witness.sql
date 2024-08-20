SELECT
    id,
    name,
    address_number,
    address_street_name
    
FROM person

WHERE address_street_name = 'Northwestern Dr'

ORDER BY address_number DESC
LIMIT 3