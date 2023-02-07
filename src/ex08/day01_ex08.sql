-- SELECT order_date, CONCAT(name, ' (age:', age, ')') AS person_information
-- FROM person_order JOIN person ON person_id = person.id ORDER BY order_date, person_information;
SELECT order_date, CONCAT(name, ' (age:', age, ')') AS person_information FROM person NATURAL JOIN (SELECT order_date, person_id AS id FROM person_order) AS aboba ORDER BY order_date, person_information;
