SELECT order_date as action_date, (SELECT name FROM person WHERE person_id = person.id) as person_name FROM person_order
UNION
SELECT visit_date as action_date, (SELECT name FROM person WHERE person_id = person.id) as person_name FROM person_visits
ORDER BY action_date ASC, person_name DESC;