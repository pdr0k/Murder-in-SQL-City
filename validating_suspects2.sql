SELECT
    person.name,
    facebook_event_checkin.*

FROM facebook_event_checkin

INNER JOIN person ON person.id = facebook_event_checkin.person_id

WHERE
    person_id IN (28819, 67318)
    AND date = '20180115'