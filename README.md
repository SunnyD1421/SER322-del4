# SER322-del4

To set up the database, create a new empty database and use the supplied .sql 
	(InventoryDB_Team18_setup.sql in the db directory) file to initialize the tables.
This can be done by running the following from the MQL command line:
	CREATE DATABASE inventory
	USE inventory
	SOURCE <path to .sql file>
	
To run the application, run java InventoryUI <URL> <USER> <PASSWD> <DRIVER> 
	and follow the console prompts to run queries.

Other info:
	- In the db directory, there are the .sql files from Deliverable 3. 
	- An additional .sql file, InventoryDB_Team18_setup.sql, was created as a 
	  combination of the create and insert .sql files to simplify the setup of the database.
	- The updated ER diagram is located in the doc directory
 
