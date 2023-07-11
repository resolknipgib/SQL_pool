SELECT person.name AS person_name, menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name
  FROM person_order
       INNER JOIN menu ON menu.id = person_order.menu_id
       INNER JOIN pizzeria ON pizzeria_id = pizzeria.id
       INNER JOIN person ON person_id = person.id
 ORDER BY person_name, pizza_name, pizzeria_name;