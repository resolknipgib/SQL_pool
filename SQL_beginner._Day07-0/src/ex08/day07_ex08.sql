SELECT person.address, pizzeria.name, count(*) AS count_of_orders
  FROM person_order
       INNER JOIN person       ON person.id = person_order.person_id
       INNER JOIN menu         ON person_order.menu_id = menu.id
       INNER JOIN pizzeria     ON pizzeria.id = menu.pizzeria_id
 GROUP BY person.address, pizzeria.name
 ORDER BY person.address, pizzeria.name;
