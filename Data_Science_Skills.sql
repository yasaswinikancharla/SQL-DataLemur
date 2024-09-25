'''
Given a table of candidates and their skills, youre tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order.

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
candidate_id
123
Explanation
Candidate 123 is displayed because they have Python, Tableau, and PostgreSQL skills. 345 isnt included in the output because theyre missing one of the required skills: PostgreSQL.

The dataset you are querying against may have different input & output - this is just an example!

p.s. give the hints below a try if youre stuck and dont know where to start!

p.p.s if you find this problem too tricky, even after the hints, check out my 30-day SQL learning roadmap, which features my favorite free resources to learn SQL! After you strengthen your SQL foundations, Im sure youll be more than ready to tackle this question!
'''
--Query

SELECT candidate_id 
FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill)=3
order by candidate_id asc
