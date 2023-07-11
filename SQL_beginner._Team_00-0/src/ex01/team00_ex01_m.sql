with recursive routing (path, node1, node2, cost, sum) as ( 
	select node1, node1, node2, cost, cost from cities where node1 = 'A'
	union all 
	select
		prev.path || ',' || next.node1,
		next.node1, next.node2, next.cost,
		prev.sum + next.cost
	from routing as prev
	join cities as next on next.node1 = prev.node2
	where prev.path not like '%' || next.node1 || '%'
),
	all_routes as (
		select
			sum as total_cost,
			'{' || path || ',A}' as tour
		from routing
		where length(path) = 7 and node2 = 'A'
)
select * from all_routes
	where total_cost = (select min(total_cost) from all_routes)
union all
select * from all_routes
	where total_cost = (select max(total_cost) from all_routes)
order by 1, 2;
