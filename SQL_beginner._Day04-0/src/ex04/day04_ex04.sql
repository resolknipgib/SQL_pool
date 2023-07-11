CREATE VIEW v_symmetric_union AS
WITH R(person_id) AS
(SELECT person_visits.person_id
  FROM person_visits
 WHERE person_visits.visit_date = Date '2022-01-02'),

S(person_id) AS(
SELECT person_visits.person_id
  FROM person_visits
 WHERE person_visits.visit_date = Date '2022-01-06')


(SELECT person_id FROM R EXCEPT SELECT person_id FROM S)
UNION
(SELECT person_id FROM S EXCEPT SELECT person_id FROM R)
ORDER BY person_id;
