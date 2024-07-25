# 0x14. MySQL 

## General
### What is the main role of a database
The main role of a database is to store and manage data efficiently, allowing for easy retrieval, updating, and management of the data.

### What is a database replica
A database replica is a copy of a database that is synchronized with the primary database, allowing for redundancy and load balancing.

### What is the purpose of a database replica
The purpose of a database replica is to provide data redundancy, improve read performance by distributing the load, and ensure high availability and disaster recovery.

### Why database backups need to be stored in different physical locations
Database backups need to be stored in different physical locations to protect against data loss due to hardware failures, natural disasters, or other catastrophic events that may affect the primary storage location.

### What operation should you regularly perform to make sure that your database backup strategy actually works
Regularly perform backup restoration tests to ensure that your database backup strategy is effective and that backups can be successfully restored in case of data loss.

## 0. Install MySQL
**mandatory**

First things first, let’s get MySQL installed on both your web-01 and web-02 servers.

MySQL distribution must be 5.7.x

## 1. Let us in!
### 1. Create MySQL User:

create a MySQL user named holberton_user on both web-01 and web-02 with the host name set to localhost and the password projectcorrection280hbtn. This will allow us to access the replication status on both servers.

Ensure holberton_user has permission to check the primary/replica status of your databases.

~$ mysql -uholberton_user -p -e "SHOW GRANTS FOR 'holberton_user'@'localhost'"
Enter password:

+-----------------------------------------------------------------+
| Grants for holberton_user@localhost                             |
+-----------------------------------------------------------------+
| GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost' |
+-----------------------------------------------------------------+

## 2. Quite an experience to live in fear, isn't it?
### 1. Create replca for database
#### create a replca user:
-The name of the new user should be replica_user, with the host name set to %, and can have whatever password you’d like.
-replica_user must have the appropriate permissions to replicate your primary MySQL server.
-holberton_user will need SELECT privileges on the mysql.user table in order to check that replica_user was created with the correct permissions.

## 3. Setup a Primary-Replica infrastructure using MySQL
### MySQL primary :
    -MySQL primary or the database Master : hosted on web-01
### MySQL replica :
    -MySQL replica or the database Slave  : hosted on web-02



