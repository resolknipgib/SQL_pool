SELECT menu.pizza_name, pizzeria.name, menu.price
  FROM menu
  FULL OUTER JOIN pizzeria
    ON menu.pizzeria_id = pizzeria.id
 WHERE menu.pizza_name = 'mushroom pizza' OR menu.pizza_name = 'pepperoni pizza'
 ORDER BY menu.pizza_name, pizzeria.name;