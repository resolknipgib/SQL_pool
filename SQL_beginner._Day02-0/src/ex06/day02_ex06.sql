SELECT menu.pizza_name, pizzeria.name
  FROM menu
  FULL OUTER JOIN pizzeria
    ON menu.pizzeria_id = pizzeria.id
  FULL OUTER JOIN person_order
    ON menu.id = person_order.menu_id
  FULL OUTER JOIN person
    ON person_order.person_id = person.id
 WHERE person.name = 'Denis' OR person.name = 'Anna'
 ORDER BY menu.pizza_name, pizzeria.name;