 SELECT order_date,
       CONCAT(temp_person.name, ' (age:', temp_person.age, ')') AS person_information
   FROM person_order
NATURAL JOIN (SELECT id AS person_id, name, age
                FROM person) AS temp_person
  ORDER BY person_order.order_date, person_information;
