'''
This SQL GROUP BY exercise uses real data from a LinkedIn SQL Interview question which is a bit too hard to tackle right now, so well solve an easier variant of the interview question.

Suppose you are given a table of candidates and their skills. How many candidates possess each of the different skills? Sort your answers based on the count of candidates, from highest to lowest.

Assumption:

There are no duplicates in the candidates table.
candidates Table:
Column Name	Type
candidate_id	integer
skill	varchar
candidates Example Input:
candidate_id	skill
123	Python
123	Tableau
123	PostgreSQL
234	R
234	PowerBI
234	SQL Server
345	Python
345	Tableau
Example Output:
skill	count
Python	4
Tableau	4
PostgreSQL	2
PowerBI	1
R	1
SQL Server	1
Java	1
'''
--Query

SELECT skill,count(skill) 
FROM candidates
group by skill
ORDER BY 2 DESC
