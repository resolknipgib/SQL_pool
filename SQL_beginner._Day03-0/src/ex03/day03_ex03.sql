WITH onlymale AS ((SELECT pizzeria.name
                     FROM person_visits
                    INNER JOIN person
                       ON person_visits.person_id = person.id
                    INNER JOIN pizzeria
                       ON person_visits.pizzeria_id = pizzeria.id
                    WHERE person.gender = 'male')
                   EXCEPT ALL
                  (SELECT pizzeria.name
                     FROM person_visits
                    INNER JOIN person
                       ON person_visits.person_id = person.id
                    INNER JOIN pizzeria
                       ON person_visits.pizzeria_id = pizzeria.id
                    WHERE person.gender = 'female')),

onlyfemale AS ((SELECT pizzeria.name
                  FROM person_visits
                 INNER JOIN person
                    ON person_visits.person_id = person.id
                 INNER JOIN pizzeria
                    ON person_visits.pizzeria_id = pizzeria.id
                 WHERE person.gender = 'female')
                EXCEPT ALL
               (SELECT pizzeria.name
                  FROM person_visits
                 INNER JOIN person
                    ON person_visits.person_id = person.id
                 INNER JOIN pizzeria
                    ON person_visits.pizzeria_id = pizzeria.id
                 WHERE person.gender = 'male'))

SELECT name AS pizzeria_name
  FROM onlymale
 UNION ALL
SELECT name AS pizzeria_name
  FROM onlyfemale
 ORDER BY pizzeria_name;



