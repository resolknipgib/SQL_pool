SELECT DISTINCT person.name AS name
  FROM person_visits
 INNER JOIN person
    ON person.id = person_visits.person_id
 ORDER BY name;
