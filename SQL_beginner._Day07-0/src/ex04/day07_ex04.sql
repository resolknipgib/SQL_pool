SELECT person.name AS name, COUNT(*) AS count_of_visits
  FROM person_visits
 INNER JOIN person
    ON person.id = person_visits.person_id
 GROUP BY person_id, person.name
HAVING COUNT(*) > 3
 ORDER BY count_of_visits DESC, name;
