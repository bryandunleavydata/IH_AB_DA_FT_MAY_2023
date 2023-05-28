## Instructions for SQL setup (server and client) for the lab.


- Everybody needs a working SQL server and a client (MySQL Workbench) 

- Everybody in that client software needs to have imported:

  * the **Sakila movie database** for your labs (Run a test query, e.g. ```select * from sakila.actor;``` and make sure it runs successfully and returns rows). If you chose a full install of MySQL workbench, this database is already included. If not, use the ```sakila-schema.sql``` attached first, and run it in MySQL workbench. After that, run the ```sakila-data.sql``` )
  * the **czech bank database** for the lecture (Run a test query, e.g. ```select * from bank.account;``` and make sure it runs successfully and returns rows). Use the ```mysql_dump.sql``` file (in MySQL workbench via Sever -> Data Import -> Import from Dump Project Folder.... select the folder in which the dump file is in, -> Start Import)

After every import of databases, you need to press the tiny refresh button in the SCHEMAS field.

You can find the files in this folder. put it at best into a folder called "databases" with corresponding subfolders fo every db. The Czech bank database dumpfile is a big file and you download it via this [link](https://drive.google.com/drive/folders/1OPz8gmOW4whkJPq98T8mRd91PpHegXGO?usp=sharing)
