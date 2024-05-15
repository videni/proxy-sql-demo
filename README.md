
Download [word-db](https://dev.mysql.com/doc/index-other.html), or just the copy in root dir.


https://proxysql.com/documentation/getting-started/


```
docker exec -i proxy-sql-demo-mysql1 mysql -uroot world < world.sql
docker exec -i proxy-sql-demo-mysql2 mysql -uroot world < world.sql
```

the demo here follows [MySQL Sharding with ProxySQL](https://www.percona.com/blog/mysql-sharding-with-proxysql/)

but the article is  too old, not all SQLs are correct, please use the modified ones in this repo.