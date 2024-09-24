'''
You have a table of 1000 customer records from a small-business based in Australia.

Find all customers where the 2nd and 3rd letter in their name is "e".

Example: "Reece Smith"

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
549	Bee Andrieux	Female	50	1919	Gleasonburgh	Northern Territory
620	Reena Hudless	Female	35	902	Jettstad	Australian Capital Territory
898	Keelia Baverstock	Female	41	3377	Angelinaport	New South Wales
'''
--Query
SELECT * FROM customers
where customer_name like '_ee%'
