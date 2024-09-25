'''
Assume youre given the tables containing info about Robinhood users, and the stock trades they placed.

Use a JOIN to output all the information from the trades table joined to the users table.

trades Table:
Column Name	Type
order_id	integer
user_id	integer
price	decimal
quantity	integer
status	string(Completed,Cancelled)
timestamp	datetime
trades Example Input:
order_id	user_id	price	quantity	status	timestamp
100101	111	9.80	10	Cancelled	08/17/2022 12:00:00
100102	111	10.00	10	Completed	08/17/2022 12:00:00
100259	148	5.10	35	Completed	08/25/2022 12:00:00
100264	148	4.80	40	Completed	08/26/2022 12:00:00
100305	300	10.00	15	Completed	09/05/2022 12:00:00
100400	178	9.90	15	Completed	09/09/2022 12:00:00
100565	265	25.60	5	Completed	12/19/2022 12:00:00
users Table:
Column Name	Type
user_id	integer
city	string
email	string
signup_date	datetime
users Example Input:
user_id	city	email	signup_date
111	San Francisco	rrok10@gmail.com	08/03/2021 12:00:00
148	Boston	sailor9820@gmail.com	08/20/2021 12:00:00
178	San Francisco	harrypotterfan182@gmail.com	01/05/2022 12:00:00
265	Denver	shadower_@hotmail.com	02/26/2022 12:00:00
300	San Francisco	houstoncowboy1122@hotmail.com	06/30/2022 12:00:00
Example Output:
order_id	user_id	quantity	status	date	price	user_id	city	email	signup_date
100102	111	10	Completed	08/17/2022 12:00:00	10.00	111	San Francisco	rrok10@gmail.com	08/03/2021 12:00:00
100101	111	10	Cancelled	08/17/2022 12:00:00	9.80	111	San Francisco	rrok10@gmail.com	08/03/2021 12:00:00
100900	148	50	Completed	07/14/2022 12:00:00	9.78	148	Boston	sailor9820@gmail.com	08/20/2021 12:00:00
100259	148	35	Completed	08/25/2022 12:00:00	5.10	148	Boston	sailor9820@gmail.com	08/20/2021 12:00:00
100264	148	40	Completed	08/26/2022 12:00:00	4.80	148	Boston	sailor9820@gmail.com	08/20/2021 12:00:00
100777	178	60	Completed	07/25/2022 17:47:00	3.56	178	San Francisco	harrypotterfan182@gmail.com	01/05/2022 12:00:00
100400	178	32	Completed	09/17/2022 12:00:00	12.00	178	San Francisco	harrypotterfan182@gmail.com	01/05/2022 12:00:00
100565	265	2	Completed	09/27/2022 12:00:00	8.70	265	Denver	shadower_@hotmail.com	02/26/2022 12:00:00
101432	265	10	Completed	08/16/2022 12:00:00	13.00	265	Denver	shadower_@hotmail.com	02/26/2022 12:00:00
100305	300	15	Completed	09/05/2022 12:00:00	10.00	300	San Francisco	houstoncowboy1122@hotmail.com	06/30/2022 12:00:00
102533	488	25	Cancelled	11/10/2022 12:00:00	22.40	488	New York	empire_state78@outlook.com	07/03/2022 12:00:00
100909	488	1	Completed	07/05/2022 12:00:00	6.50	488	


'''
--Query

SELECT * 
FROM trades
join users on trades.user_id=users.user_id
