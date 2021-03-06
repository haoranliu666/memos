# https://datacarpentry.org/python-ecology-lesson/09-working-with-sql/index.html

import sqlite3

#connect
con = sqlite3.connect("xxx") # xxx is the sqlite file name
cur = con.cursor()

#close
con.close()

#execute
for row in cur.execute('yyy'):  # yyy is sqlite command
    print(row)
    
    
