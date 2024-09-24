'''
Lets practice using AND along with WHERE to filter Amazon reviews based on these two conditions:

the start count is greater than 2, and less than or equal to 4
the review must come from either user 123, 265, or 362
Pro Tip: Try coding up, and executing, each filtering condition, one at a time. Its too easy to try to code this all up in one go, and mess something up!

reviews Table:
Column Name	Type
review_id	integer
user_id	integer
submit_date	datetime
product_id	integer
stars	integer (1-5)
reviews Sample Input:
review_id	user_id	submit_date	product_id	stars
6171	123	06/08/2022 00:00:00	50001	4
7802	265	06/10/2022 00:00:00	69852	4
5293	362	06/18/2022 00:00:00	50001	3
6352	192	07/26/2022 00:00:00	69852	3
4517	981	07/05/2022 00:00:00	69852	2
Sample Output:
review_id	user_id	submit_date	product_id	stars
6171	123	06/08/2022 00:00:00	50001	4
Review 4171 satisfies all the conditions!
'''
--Query
SELECT * FROM reviews 
where stars>=2 
and stars<=4
and user_id =123 
OR user_id =265
OR user_id =362
