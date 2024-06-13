

--Total Revenue--
	
select sum(total_price) as Revenue 
from pizza

--Average order value--

select sum(total_price)/count(distinct order_id) as average
from pizza

--Total pizza's sold--
	
select count(quantity)
from pizza

--Total Orders--
	
select count(distinct order_id)
from pizza

--Average pizza's per order--

select sum(quantity)/count(distinct order_id) as average_pizza
from pizza

--Daily trend for total orders--

select  To_Char("order_date", 'DAY')as day_of_week, count(distinct order_id)
from pizza
group by day_of_week
order by 2 desc

--Monthly trend for orders--
select  To_Char("order_date", 'month')as months, count(distinct order_id)
from pizza
group by months
order by 2 desc

--Percentage of sales by pizza sales--

select pizza_category,sum(total_price)*100/(select sum(total_price) from pizza) as sales
from pizza
group by 1

--Total pizza's sold by pizza category--

select pizza_category,count(quantity)
from pizza
group by pizza_category
order by 2 desc

--Top 5 best sellers by revenue--

select pizza_name,sum(total_price) as revenue
from pizza
group by pizza_name
order by 2 desc
limit 5





	
	


select * from pizza