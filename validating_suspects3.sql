SELECT
    person.name,
    facebook_event_checkin.*

FROM facebook_event_checkin

INNER JOIN person ON person.id = facebook_event_checkin.person_id

WHERE
    event_name = 'The Funky Grooves Tour'