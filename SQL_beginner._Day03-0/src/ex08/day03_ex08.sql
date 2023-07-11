INSERT INTO menu
VALUES ((SELECT MAX(menu.id) + 1 FROM menu), (SELECT id FROM pizzeria WHERE pizzeria.name = 'Dominos'), 'sicilian pizza', 900);
 select count(*)=1 as check
       from menu
       where id = 20 and pizzeria_id=2 and pizza_name = 'sicilian pizza' and price=900