INSERT INTO menu
VALUES ((SELECT MAX(menu.id) + 1 FROM menu), (SELECT id FROM pizzeria WHERE pizzeria.name = 'Dominos'), 'school pizza', 55);

INSERT INTO person_visits
VALUES ((SELECT MAX(person_visits.id) + 1 FROM person_visits), (SELECT id FROM person WHERE person.name = 'Dmitriy'), (SELECT id FROM pizzeria WHERE pizzeria.name = 'Dominos'), Date '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

