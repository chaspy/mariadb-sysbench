# mariadb-sysbench
Script using sysybench which is a benchmark tool for mariadb or mysql.

# dependency

```
# sysbench --version
sysbench 1.0.6
```

# prepare
Create Database and User.

```
MariaDB [(none)]> create database sbtest;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sbtest             |
| test               |
+--------------------+
5 rows in set (0.01 sec)

MariaDB [(none)]> GRANT ALL ON sbtest.* TO 'sbtest'@'localhost' IDENTIFIED BY 'sbtest';
Query OK, 0 rows affected (0.00 sec)
```

# usage

## sysbench.sh
prepare(create table), run(can specifiy num of thread, default is 1), and cleanup(drop table)

```
# ./sysbench.sh 
Usage: ./sysbench.sh <prepare|run|cleanup> <num of threads>
```

## run.sh
Create directory named by date command. Execute 'sysbench.sh run' by each num of thread.

## result.sh
Print num of transaction per 60 second.

```
# ./result.sh 
Usage: ./result.sh <result's directory>
```

