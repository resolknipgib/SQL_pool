SELECT menu_pizzeria_1.pizza_name, menu_pizzeria_1.name AS pizzeria_name_1, menu_pizzeria_2.name AS pizzeria_name_2, menu_pizzeria_1.price
  FROM (menu INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id) AS menu_pizzeria_1
 INNER JOIN (menu INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id) AS menu_pizzeria_2
    ON menu_pizzeria_1.pizza_name = menu_pizzeria_2.pizza_name
   AND menu_pizzeria_1.price = menu_pizzeria_2.price
   AND menu_pizzeria_1.pizzeria_id <> menu_pizzeria_2.pizzeria_id
   AND menu_pizzeria_1.name < menu_pizzeria_2.name
 ORDER BY pizza_name;



