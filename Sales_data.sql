Use sales 
go


--query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.

select s.[Salesman_id],
        s.[Name], 
       c.[Customer_Name],
        c.[City]
 from [dbo].[Salesman$]s
 join [dbo].[Customer$]c 
 on s.[Salesman_id]= c.[Salesman_ID]

-- query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

Select o.[Order Number],
       o.[Purchase_Amount],
       c.[Customer_Name],
       c.[City]
from [dbo].[Order$] o
join [dbo].[Customer$] c
on o.[Salesman_id] = c.[Salesman_ID]
where o.[Purchase_Amount] between 500 and 2000

-- query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.

select c.[Customer_Name],
       c.[City],
       s.[Salesman_id],
       s.[Name],
       s.[commission]
from [dbo].[Customer$] c 
join [dbo].[Salesman$] s
on c.[Salesman_ID] = s.[Salesman_id]

--query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.  

select c.[Customer_Name],
       c.[City],
       c.[Salesman_ID],
       s.[Name],
       s.[commission]
from [dbo].[Customer$] c
join [dbo].[Salesman$] s
on c.[Salesman_ID] = s.[Salesman_id]
where s.[commission] > 0.12

/*query to locate those salespeople who do not live in the same city where their customers live and have received 
a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.*/  

select c.[Customer_Name],
c.[City],
s.[Salesman_id],
s.[Name],
s.[city] as Salesman_city,
s.[commission]
from [dbo].[Customer$] c
join [dbo].[Salesman$] s
on c.[Salesman_ID] = s.[Salesman_id]
where c.[City]<> s.[city]
and s.[commission] >0.12

--query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission

select o.[Order Number],
o.[Order Date],
o.[Purchase_Amount],
c.[Customer_Name],
c.[Grade],
s.[Salesman_id],
s.[Name],
s.[commission]
from [dbo].[Order$] o
join [dbo].[Customer$] c on o.[Customer ID] = c.[Customer_ID]
join [dbo].[Salesman$] s on s.[Salesman_id] =s.[Salesman_id]

--statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned. 

select o.[Order Number],
o.[Purchase_Amount],
o.[Order Date],
c.[Customer_ID],
c.[Customer_Name],
c.[City] as customer_city,
c.[Grade],
s.[Salesman_id],
s.[Name] as salesman_name,
s.[city] as salesman_city,
s.[commission]
from [dbo].[Order$] o
join [dbo].[Customer$]c on o.[Customer ID] = c.[Customer_ID]
join [dbo].[Salesman$]s on s.[Salesman_id] = o.[Salesman_id]

-- query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.

 select c.[Customer_Name],
c.[City],
c.[Grade],
s.[Name] as Salesman_name,
s.[city] as Salesman_city 
from [dbo].[Customer$] c
join [dbo].[Salesman$] s
on c.[Salesman_ID] = s.[Salesman_id]
order by c.[Customer_ID] asc 

-- query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.

select c.[Customer_Name],
c.[City] as Customer_city, 
c.[Grade], 
s.[Salesman_id],
s.[Name] as salesman_name,
s.[city] as salesman_city 
from [dbo].[Customer$] c
join [dbo].[Salesman$] s on c.[Salesman_ID] = s.[Salesman_id]
where c.[Grade] <300

/*SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order 
according to the order date to determine whether any of the existing customers have placed an order or not.*/

select c.[Customer_Name],
c.[City] as customer_city,
o.[Order Number],
o.[Order Date], 
o.[Purchase_Amount]
from [dbo].[Customer$] c
join [dbo].[Order$] o
on c.[Customer_ID]= o.[Customer ID]
order by o.[Order Date] asc 


/*SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their 
salesman or by themselves.*/

select c.[Customer_Name],
c.[City],
o.[Order Number],
o.[Order Date],
o.[Purchase_Amount],
s.[Name] as Salesman_name,
s.[commission]
from [dbo].[Customer$] c
left join [dbo].[Order$] o on c.[Customer_ID] = o.[Customer ID]
left join [dbo].[Salesman$] s on o.[Salesman_ID] = s.[Salesman_id]

-- SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.

select s.[Salesman_id],
s.[Name] as Salesman_name,
c.[Customer_Name] 
from [dbo].[Customer$] c 
right join [dbo].[Salesman$] s on c.[Salesman_ID] = s.[Salesman_id]
order by s.[Name] asc

--write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount.

select s.[Salesman_id], 
s.[Name] as salesman_name, 
c.[Customer_Name],
c.[City] as customer_city, 
c.[Grade],
o.[Order Number],
o.[Order Date],
o.[Purchase_Amount]
from [dbo].[Salesman$] s 
left join [dbo].[Customer$] c on c.[Salesman_ID] = s.[Salesman_id]
left join [dbo].[Order$] o on o.[Salesman_id] = s.[Salesman_id]
order by s.Name asc

/* SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer.
The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.*/

select s.[Salesman_id],
s.[Name] as salesman_name, 
c.[Customer_Name],
c.[Grade],
o.[Purchase_Amount]
from [dbo].[Salesman$] s
left join [dbo].[Customer$] c on c.[Salesman_ID] = s.[Salesman_id]
left join [dbo].[Order$] o on s.[Salesman_id] = o.[Salesman_id]
where (o.[Purchase_Amount] > 2000 and c.[Grade] is not null )
or o.[Purchase_Amount] is null 
order by s.[Name] asc 

/*For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, create a report containing the customer name, city, order number, order date, and purchase amount
n.b.- it needs us to provide a list of customers on the list who have placed one or more orders and orders placed by customers not on the
list i.e customer id in orders but not in customer table . We use a full outer join here as it captures both sides - both matched and 
unmatched rows from both tables*/

select c.[Customer_Name],
c.[City] as customer_city, 
o.[Order Number],
o.[Order Date],
o.[Purchase_Amount]
from [dbo].[Customer$] c
full outer join [dbo].[Order$] o
on c.[Customer_ID] = o.[Customer ID]
where o.[Order Number] is not null 

/* SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders 
OR which order(s) have been placed by the customer who neither is on the list nor has a grade.*/

select c.[Customer_Name],
c.[City] as customer_city, 
c.[Grade],
o.[Order Number], 
o.[Purchase_Amount]
from [dbo].[Order$] o
full outer join [dbo].[Customer$] c on c.[Salesman_ID] = o.[Salesman_id]
where  (c.[Customer_Name] is not null 
         and o.[Order Number] is not null
          and c.Grade is not null)
OR 
   (c.[Customer_Name] is null 
         and o.[Order Number] is not null
          and c.Grade is null)

--SQL query to combine each row of the salesman table with each row of the customer table. 

select * from [dbo].[Customer$] c
cross join [dbo].[Salesman$] s 

/* SQL statement to create a Cartesian product(cross join) between salesperson and customer, i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.*/

select * 
from [dbo].[Salesman$] s 
cross join [dbo].[Customer$]c 
where s.[city] = c.City


/*SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.*/

select *
from [dbo].[Salesman$] s 
cross join [dbo].[Customer$] c 
where s.[city] is not null 
and c.[Grade] is not null 

/*SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city
which is not the same as his customer and the customers should have their own grade.*/

select * 
from [dbo].[Salesman$] s 
cross join [dbo].[Customer$] c 
where s.city <> c.City
and c.[Grade] is not null 
