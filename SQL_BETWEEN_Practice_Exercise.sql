'''
Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data. Use the BETWEEN SQL command to find data on medicines:

which sold between 100,000 units and 105,000 units
AND were manufactured by either Biogen, AbbVie, or Eli Lilly
Output the manufacturer name, drug name, and the # of units sold.

Hint: this problem requires not just BETWEEN, but also OR, AND, and WHERE clauses!

If you are struggling, be sure to review the old tutorials!

pharmacy_sales Table:
Column Name	Type
product_id	integer
units_sold	integer
total_sales	decimal
cogs	decimal
manufacturer	varchar
drug	varchar
pharmacy_sales Sample Input:
product_id	units_sold	total_sales	cogs	manufacturer	drug
9	37410	293452.54	208876.01	Eli Lilly	Zyprexa
34	94698	600997.19	521182.16	AstraZeneca	Surmontil
61	77023	500101.61	419174.97	Biogen	Varicose Relief
136	144814	1084258	1006447.73	Biogen	Burkhart
...	...	...	...	...	....
pharmacy_sales Example Output:
manufacturer	drug	units_sold
AbbVie	Lidocaine Hydrochloride and Epinephri	101102
AbbVie	Hydralazine Hydrochloride	104368
Biogen	QUETIAPINE FUMARATE	103246
Eli Lilly	Androgel	102027
'''
-- Query
SELECT manufacturer,drug,units_sold FROM pharmacy_sales
where units_sold between 100000 and 105000
and manufacturer in ('Biogen', 'AbbVie','Eli Lilly')
