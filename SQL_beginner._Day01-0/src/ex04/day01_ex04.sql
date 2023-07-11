SELECT person_id
  FROM person_order
 WHERE order_date = Date '2022-01-07'

EXCEPT ALL

SELECT person_id
  FROM person_visits
 WHERE visit_date = Date '2022-01-07'