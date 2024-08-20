SELECT
    id,
    name,
    address_number,
    address_street_name

FROM person

WHERE 
    name LIKE 'Annabel%'
    AND address_street_name = 'Franklin Ave'