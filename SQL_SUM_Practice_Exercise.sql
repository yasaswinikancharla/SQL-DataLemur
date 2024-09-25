'''
Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data.

Output the total number of drugs manufactured by Pfizer, and output the total sales for all the Pfizer drugs.

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
Example Output:
count	sum
13	27502472.25

'''
--Query
SELECT count(drug),SUM(total_sales) FROM pharmacy_sales
group by manufacturer
having manufacturer='Pfizer' ;
