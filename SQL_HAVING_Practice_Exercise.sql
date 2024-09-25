'''
Given a table of candidates and their technical skills, list the candidate IDs of candidates who have more than 2 technical skills.

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
234	PowerBI
234	SQL Server
345	Python
345	Tableau
Example Output:
candidate_id
123
Example Explanation
Candidate 123 is the only ID that is outputted because they have more than two technical skills (Python, Tableau, and PostgreSQL). 234 and 345 arent displayed, because they only have two technical skills.
'''
--Query
SELECT candidate_id FROM candidates
group by candidate_id
having count(skill)>2
