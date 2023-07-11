WITH dates(missing_date) AS (SELECT * FROM generate_series(date '2022.01.01',date '2022.01.10','1 day'))

SELECT missing_date::date
  FROM dates
  LEFT JOIN (SELECT visit_date
               FROM person_visits
              WHERE person_id = 1 OR person_id = 2) AS visit_date
    ON dates.missing_date = visit_date
 WHERE visit_date IS NULL
ORDER BY missing_date;