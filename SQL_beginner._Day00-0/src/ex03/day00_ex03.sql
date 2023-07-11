SELECT DISTINCT person_id
  FROM person_visits
 WHERE visit_date BETWEEN DATE '2022-01-6' AND DATE '2022-01-9'
    OR pizzeria_id = 2
 ORDER BY person_id DESC;