'''
Assume youre given a table containing data on Amazon customers and their spending on products in different category. Write a query using COUNT DISTINCT to identify the number of unique products within each product category.

product_spend Table:
Column Name	Type
category	string
product	string
user_id	integer
spend	decimal
transaction_date	timestamp
product_spend Example Sample Input:
category	product	user_id	spend	transaction_date
appliance	refrigerator	165	246.00	12/26/2021 12:00:00
appliance	refrigerator	123	299.99	03/02/2022 12:00:00
appliance	washing machine	123	219.80	03/02/2022 12:00:00
electronics	vacuum	178	152.00	04/05/2022 12:00:00
electronics	wireless headset	156	249.90	07/08/2022 12:00:00
electronics	vacuum	145	189.00	07/15/2022 12:00:00
Example Sample Output:
category	count
appliance	2
electronics	2
Explanation:
Within the "appliance" category, the two unique products are refrigerator & washing machine. Within the electronics category, the two unique products are vacuum and wireless headset.

The dataset you are querying against may have different input & output - this is just an example!
'''
--Query

SELECT category,COUNT(DISTINCT product) FROM product_spend
GROUP BY category
