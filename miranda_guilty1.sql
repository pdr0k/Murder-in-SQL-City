SELECT
    facebook_event_checkin.person_id,
    person.name,
    facebook_event_checkin.event_name,
    facebook_event_checkin.date,
    COUNT(event_name) AS [Attendance Count]

FROM facebook_event_checkin

INNER JOIN person ON person.id = facebook_event_checkin.person_id

WHERE
    event_name = 'SQL Symphony Concert'
    AND date BETWEEN '20171201' AND '20171231'
    
GROUP BY person_id
HAVING COUNT(event_name) = 3