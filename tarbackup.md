Mark El-Khoury 9:28 PM
## Sysadmin Essentials: Archiving Data using tar
--------
## Instructions 
-------
## How to Backup Data to Compressed Archives
In this activity you will create a gzip and bz2 archive of the TarDocs/Programs directory in a single command.
* Open a terminal window on the Virtual Machine.
* Change to the Projects directory.
*Exercise 1:*
* Create the tardocs.tar.gz archive using the TarDocs/Programs directory.
*Exercise 2:*
* Create the tardocs.tar.bz2 archive using the TarDocs/Programs directory.
*Exercise 3:*
* Compare the size of the tardocs.tar.gz and tardocs.tar.bz2 archives.
* Which archive is smaller?
Cheatsheet:
Create a gzip compressed tar archive:
tar czf tardocs.tar.gz TarDocs/Documents
Create a bz2 compressed tar archive:
tar cjf tardocs.tar.bz2 TarDocs/Documents
Only difference is z vs j in the command.
