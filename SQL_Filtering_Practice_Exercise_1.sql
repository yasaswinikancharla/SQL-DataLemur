'''
You have a table of 1000 customer records from a small-business based in Australia.

Find all customers who are between the ages of 18 and 22 (inclusive), live in either Victoria, Tasmania, Queensland, their gender isnt "n/a", and their name starts with either A or B.

customers Schema:
Column Name	Type
customer_id	integer
customer_name	string
gender	string
age	integer
zip_code	integer
city	string
state	string
customers Sample Input:
customer_id	customer_name	gender	age	zip_code	city	state
1	Ignace Whillock	Male	30	5464	Johnstonhaven	Northern Territory
2	Gray Eskrick	Female	69	8223	New Zacharyfort	South Australia
3	Ellswerth Laurent	Male	59	5661	Aliburgh	Australian Capital Territory
...	....	...	....	...	...	...
Example Output
customer_id	customer_name	gender	age	zip_code	city	state
123	Aidan Goseling	Female	22	1149	Jordanborough	Tasmania
402	Adeline Perrington	Female	22	1712	West Cooper	Tasmania
692	Bertrando Melonby	Male	20	4058	Laraview	Tasmania
900	Audrie Frotton	Female	22	9455	East Emily	Tasman

'''
--Query
SELECT * 
FROM customers 
where age between 18 and 22 
and state in ('Victoria','Tasmania','Queensland')
and gender != 'n/a'
and (customer_name Like 'A%' or customer_name Like 'B%');
