'''
For every FAANG stock in the stock_prices dataset, write a SQL query to find the lowest price each stock ever opened at? Be sure to also order your results by price, in descending order.

stock_prices Example Input:
date	ticker	open	high	low	close
01/31/2020 00:00:00	GOOG	67.08	75.16	67.08	71.71
01/31/2020 00:00:00	META	206.75	224.20	201.06	201.91
01/31/2020 00:00:00	MSFT	158.78	174.05	156.51	170.23
01/31/2020 00:00:00	AMZN	93.75	102.79	90.77	100.44
01/31/2020 00:00:00	NFLX	326.10	359.85	321.20	345.09
Example Output:
ticker	min
NFLX	176.49
MSFT	153.00
META	94.33
AMZN	85.46
AAPL	61.63
GOOG	56.10
'''
--Query
SELECT ticker,min(open) FROM stock_prices
group by ticker
order by 2 desc;
