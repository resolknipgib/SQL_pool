CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name
  FROM person
 INNER JOIN person_visits
    ON person.id = person_visits.person_id
 INNER JOIN pizzeria
    ON person_visits.pizzeria_id = pizzeria.id
 INNER JOIN menu
    ON pizzeria.id = menu.pizzeria_id
  WHERE person.name = 'Dmitriy' AND person_visits.visit_date = Date '2022-01-08' AND menu.price < 800;
