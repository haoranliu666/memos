#sqlite3

.quit

#set display structure
.header on
.mode column
.timer on

#open database
.open rawassignee1.db

#describe database
.databases

#show all data in text
.dump

#all table names
.tables

#detailed information
.schema

#add table
CREATE TABLE COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);

#delete table
DROP TABLE COMPANY;

#show data
SELECT * FROM COMPANY;
SELECT AGE FROM COMPANY;