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

#
query = ("""select permno, ncusip, namedt, nameendt FROM crsp.dsenames""")
dfdsenames = db.raw_sql(query)

#
db.close()

#
with wrds.Connection(wrds_username = 'haoranliu32123') as db:
    stocknames = db.get_table(library='crsp', table='stocknames', obs=10)