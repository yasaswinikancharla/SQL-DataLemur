'''
Imagine you are a Data Analyst working at CVS Pharmacy, and you had access to pharmacy sales data. Use the IN SQL command to find data on medicines:

which were manufactured by either Roche, Bayer, or AstraZeneca
and did not sell between 55,000 and 550,000 units
Output the manufacturer name, drug name, and the # of units sold. for all the medicines which match that criteria.

Hint: dont forget about the BETWEEN operator either!

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
manufacturer	drug	units_sold
Roche	Topcare Tussin	51707
AstraZeneca	Armour Thyroid	47310
'''
--Query

SELECT manufacturer,drug,units_sold	FROM pharmacy_sales
where units_sold NOT BETWEEN 55000 and 550000 
and manufacturer IN ('Roche','Bayer','AstraZeneca')
