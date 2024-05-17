
Download [word-db](https://dev.mysql.com/doc/index-other.html), or just use the copy in root dir.


You must follow the [official doc](https://proxysql.com/documentation/getting-started/
) to understand some basics


Simply run
```
docker-compose up
```
Then
```
docker exec -i proxy-sql-demo-mysql1 mysql -uroot world < world.sql
docker exec -i proxy-sql-demo-mysql2 mysql -uroot world < world.sql
```

the demo here follows [MySQL Sharding with ProxySQL](https://www.percona.com/blog/mysql-sharding-with-proxysql/)

but the article is  too old, not all SQLs are correct, please use the modified ones in this repo.

# 3 sharding methods

* [host](./docs/sharding_by_host.md)
* [schema](./docs/sharding_by_schema.md)
* [data](https://proxysql.com/documentation/how-to-setup-proxysql-sharding/)

# [ProxySQL cluster](./docs/proxysql_cluster.md)