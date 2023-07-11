SELECT name, SUM(total_count) AS total_count
FROM ((SELECT name, COUNT(person_visits.person_id) AS total_count
         FROM person_visits
         FULL JOIN pizzeria
           ON person_visits.pizzeria_id = pizzeria.id
        GROUP BY name)
        UNION ALL
      (SELECT pizzeria.name, COUNT(person_id) AS total_count
         FROM person_order
        INNER JOIN menu
           ON menu.id = person_order.menu_id
         FULL JOIN pizzeria
           ON pizzeria.id = menu.pizzeria_id
        GROUP BY name)) AS all_statistics
GROUP BY name
ORDER BY total_count DESC;
