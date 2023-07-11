INSERT INTO person_order
(SELECT id, person_id, menu_id, order_date::date
   FROM generate_series((SELECT MAX(id) + 1 FROM person_order),
                        (SELECT MAX(id) FROM person_order) + (SELECT MAX(id) FROM person)) AS id
       INNER JOIN
       generate_series((SELECT MIN(id) FROM person),
                       (SELECT MAX(id) FROM person)) AS person_id
       ON id = person_id + (SELECT MAX(id) FROM person_order),
       (SELECT menu.id AS menu_id
         FROM menu
        WHERE pizza_name = 'greek pizza'
              AND pizzeria_id = (SELECT id
                                   FROM pizzeria
                                  WHERE name = 'Dominos')) AS menu_id,
       generate_series(Date '2022-02-25', Date '2022-02-25', '1 day') AS order_date)
 select count(*)=9 as check
       from person_order
       where order_date='2022-02-25' and menu_id = (select id from menu where pizza_name = 'greek pizza')