'''
You have a table of 1000 customer records from a small-business based in Australia.

Find all customers whose first name starts with "F" and the last letter in their last name is "ck".

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
155	Farrah Renwick	Female	80	7841	Port Sophia	New South Wales
360	Francene Shurlock	Female	68	5743	Kingmouth	Northern Territory
622	Felic Roderick	Male	35	2110	Lake Victoriaside	Victoria
'''
--Query
SELECT * FROM customers
where customer_name like 'F%ck'
