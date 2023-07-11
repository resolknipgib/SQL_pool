DELETE
  FROM person_order
 WHERE person_order.order_date = '2022-02-25';

DELETE
  FROM menu
 WHERE menu.pizza_name = 'greek pizza';

select count(*)=0 as check
       from person_order
       where order_date='2022-02-25' and menu_id = (select id from menu where pizza_name = 'greek pizza')
