CREATE VIEW v_price_with_discount AS
SELECT person.name, menu.pizza_name, menu.price, (CAST((menu.price - 0.1*menu.price) AS INT)) AS discount_price
  FROM person_order
 INNER JOIN menu
    ON person_order.menu_id = menu.id
 INNER JOIN person
    ON person_order.person_id = person.id
ORDER BY person.name, menu.pizza_name

