INSERT INTO person_order
VALUES ((SELECT MAX(person_order.id) + 1 FROM person_order),
        (SELECT id FROM person WHERE name = 'Denis'),
        (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'
                               AND pizzeria_id = (SELECT id FROM pizzeria WHERE name = 'Dominos')),
         Date '2022-02-24'),
((SELECT MAX(person_order.id) + 2 FROM person_order),
 (SELECT id FROM person WHERE name = 'Irina'),
 (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'
                        AND pizzeria_id = (SELECT id FROM pizzeria WHERE name = 'Dominos')),
 Date '2022-02-24');

select count(*)=2 as check
       from person_order
       where order_date = '2022-02-24' and person_id in (6,4) and menu_id=(select id from menu where pizza_name = 'sicilian pizza')