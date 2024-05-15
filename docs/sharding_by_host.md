
```
delete from mysql_query_rules where rule_id in (40,41,42, 10,11,12);
INSERT INTO mysql_query_rules (rule_id,active,username,match_pattern,destination_hostgroup,apply) VALUES (10,1,'user_shardRW',"\/\*\s*shard_host_HG=.*Europe\s*\*.",10,0);
INSERT INTO mysql_query_rules (rule_id,active,username,match_pattern,destination_hostgroup,apply) VALUES (11,1,'user_shardRW',"\/\*\s*shard_host_HG=.*Asia\s*\*.",20,0);
INSERT INTO mysql_query_rules (rule_id,active,username,match_pattern,destination_hostgroup,apply) VALUES (12,1,'user_shardRW',"\/\*\s*shard_host_HG=.*Africa\s*\*.",30,0);

LOAD MYSQL QUERY RULES TO RUNTIME;SAVE MYSQL QUERY RULES TO DISK;
```

```
Select /* shard_host_HG=Europe */ city.Name, city.Population from world.country join world.city on world.city.CountryCode=world.country.Code where country.code='ITA' limit 5; 

SELECT * /* shard_host_HG=Europe */ from performance_schema.global_variables where variable_name like 'bind%';

Select /* shard_host_HG=Asia */ city.Name, city.Population from world.country join world.city on world.city.CountryCode=world.country.Code where country.code='IND' limit 5; 

SELECT * /* shard_host_HG=Asia */ from performance_schema.global_variables where variable_name like 'bind%';
s
Select /* shard_host_HG=Africa */ city.Name, city.Population from world.country join world.city on world.city.CountryCode=world.country.Code where country.code='ETH' limit 5;

SELECT * /* shard_host_HG=Africa */ from performance_schema.global_variables where variable_name like 'bind%';
```

```
select hostgroup_id,hostname,port,status from mysql_servers ;
```

| hostgroup_id | hostname    | port | status |
|--------------|-------------|------|--------|
| 10           | 192.168.1.5 | 3306 | ONLINE |
| 20           | 192.168.1.6 | 3306 | ONLINE |
| 30           | 192.168.1.7 | 3306 | ONLINE |
