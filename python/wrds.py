#https://wrds-www.wharton.upenn.edu/pages/support/programming-wrds/programming-python/querying-wrds-data-python/

import wrds

db = wrds.Connection(wrds_username = 'haoranliu32123')

#
db.list_libraries()
db.list_tables(library='crsp')
db.describe_table(library='crsp', table='erdport1')
db.get_row_count(library='crsp', table='stocknames')


stocknames = db.get_table(library='crsp', table='erdport1')

#
stocknames = db.get_table(library='crsp', table='erdport1', columns=['permno', 'ret'], obs = 100)
stocknames.head()

#SQL
query = ("""select permno, ncusip, namedt, nameendt FROM crsp.dsenames""")
dfdsenames = db.raw_sql(query)

#SELECT columns FROM library.dataset WHERE column1 = value LIMIT 10

db.raw_sql("""
    SELECT a.gvkey, a.datadate, a.tic, a.conm, a.at, a.lt, b.prccm, b.cshoq
    FROM comp.funda a
    JOIN comp.secm b ON a.gvkey = b.gvkey AND a.datadate = b.datadate
    WHERE a.tic = 'IBM' AND a.datafmt = 'STD' AND a.consol = 'C' AND a.indfmt = 'INDL'
""")

params = {"tickers": ("0015B", "0030B", "0032A", "0033A", "0038A")}
data = db.raw_sql(
    "SELECT datadate, gvkey, cusip FROM comp.funda WHERE tic IN %(tickers)s",
    params=params,
)

#
db.close()

#
with wrds.Connection(wrds_username = 'haoranliu32123') as db:
    stocknames = db.get_table(library='crsp', table='stocknames', obs=10)
