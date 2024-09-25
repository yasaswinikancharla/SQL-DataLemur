'''
Use SQLs MIN command in this practice exercise, to find the lowest Microsoft stock (MSFT) ever opened at.

Sample stock_prices Input:
date	ticker	open	high	low	close
01/01/2020 00:00:00	GOOG	67.08	75.16	67.08	71.71
01/01/2020 00:00:00	NFLX	326.10	359.85	321.20	345.09
01/01/2020 00:00:00	AAPL	74.06	81.96	73.19	77.38
01/01/2020 00:00:00	AMZN	93.75	102.79	90.77	100.44
01/01/2020 00:00:00	MSFT	158.78	174.05	156.51	170.23
Example Output:
min
153.00
'''
--Query

SELECT Min(open) FROM stock_prices
where ticker='MSFT';
