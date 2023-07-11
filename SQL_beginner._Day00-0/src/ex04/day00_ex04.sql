SELECT CONCAT(name, ' (age:', age, ',gender:''', gender, ''',address:''', address, ''')') AS result
  FROM person
 ORDER BY result;