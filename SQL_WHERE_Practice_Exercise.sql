'''


Given the reviews table, write a query to retrieve all 3-star reviews using the SQL WHERE clause. Only display the user_id and stars columns.

reviews Table:
Column Name	Type
review_id	integer
user_id	integer
submit_date	datetime
product_id	integer
stars	integer (1-5)
reviews Example Input:
review_id	user_id	submit_date	product_id	stars
6171	123	06/08/2022 00:00:00	50001	4
7802	265	06/10/2022 00:00:00	69852	4
5293	362	06/18/2022 00:00:00	50001	3
6352	192	07/26/2022 00:00:00	69852	3
4517	981	07/05/2022 00:00:00	69852	2
Example Output:
user_id	stars
362	3
192	3

'''
--Query
Select user_id,stars
from reviews
where stars=3
