 CREATE INDEX IF NOT EXISTS idx_person_name
     ON person (upper(name));
    SET enable_seqscan = OFF;
EXPLAIN ANALYSE
 SELECT *
   FROM person
  WHERE (upper(name)) IS NOT NULL;