SELECT
    person.*,
    drivers_license.plate_number

FROM person

LEFT JOIN drivers_license ON drivers_license.id = person.license_id

WHERE
    person.id IN (28819, 67318)