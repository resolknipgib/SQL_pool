-- Session 1
BEGIN;                                                   -- 1
UPDATE pizzeria set rating = 5 WHERE name = 'Pizza Hut'; -- 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';         -- 3
COMMIT WORK;                                             -- 5

-- Session 2
-- Before
SELECT * FROM pizzeria WHERE name  = 'Pizza Hut';        -- 4
-- After
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';         -- 6