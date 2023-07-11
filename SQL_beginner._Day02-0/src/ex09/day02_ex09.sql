SELECT person.name
  FROM person_order
       INNER JOIN menu ON menu.id = person_order.menu_id
       INNER JOIN person ON person.id = person_order.person_id
  WHERE person.gender = 'female'
        AND menu.pizza_name = 'pepperoni pizza'

INTERSECT

SELECT person.name
  FROM person_order
       INNER JOIN menu ON menu.id = person_order.menu_id
       INNER JOIN person ON person.id = person_order.person_id
  WHERE person.gender = 'female'
        AND menu.pizza_name = 'cheese pizza'
  ORDER BY 1;