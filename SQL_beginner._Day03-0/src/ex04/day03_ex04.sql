WITH onlymale AS ((SELECT pizzeria.name
                     FROM person_order
                    INNER JOIN person
                       ON person_order.person_id = person.id
                    INNER JOIN menu
                       ON person_order.menu_id = menu.id
                    INNER JOIN pizzeria
                       ON menu.pizzeria_id = pizzeria.id
                    WHERE person.gender = 'male')
                   EXCEPT
                  (SELECT pizzeria.name
                     FROM person_order
                    INNER JOIN person
                       ON person_order.person_id = person.id
                    INNER JOIN menu
                       ON person_order.menu_id = menu.id
                    INNER JOIN pizzeria
                       ON menu.pizzeria_id = pizzeria.id
                    WHERE person.gender = 'female')),

onlyfemale AS ((SELECT pizzeria.name
                  FROM person_order
                 INNER JOIN person
                    ON person_order.person_id = person.id
                 INNER JOIN menu
                    ON person_order.menu_id = menu.id
                 INNER JOIN pizzeria
                    ON menu.pizzeria_id = pizzeria.id
                 WHERE person.gender = 'female')
                EXCEPT
               (SELECT pizzeria.name
                  FROM person_order
                 INNER JOIN person
                    ON person_order.person_id = person.id
                 INNER JOIN menu
                    ON person_order.menu_id = menu.id
                 INNER JOIN pizzeria
                    ON menu.pizzeria_id = pizzeria.id
                 WHERE person.gender = 'male'))

SELECT name AS pizzeria_name
  FROM onlymale
 UNION
SELECT name AS pizzeria_name
  FROM onlyfemale
 ORDER BY pizzeria_name;