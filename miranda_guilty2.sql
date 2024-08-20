SELECT
    person.id,
    person.name,
    income.annual_income,
    drivers_license.gender,
    drivers_license.height,
    drivers_license.hair_color,
    drivers_license.car_make || ' ' || drivers_license.car_model AS [Car Name]
    

FROM person

INNER JOIN drivers_license ON drivers_license.id = person.license_id
INNER JOIN income ON income.ssn = person.ssn

WHERE
    person.id IN (
        SELECT
                person_id
            FROM facebook_event_checkin
            
            WHERE
                event_name = 'SQL Symphony Concert'
                AND date BETWEEN '20171201' AND '20171231'
                
        GROUP BY person_id
        HAVING COUNT(event_name) = 3 
     )