## My Ubuntu Desktop
```bash
$ docker volume create mysql5.7-data
$ docker run --name mysql5.7 -e MYSQL_ROOT_PASSWORD=secret -d -p 33057:3306 -v mysql5.7-data:/var/lib/mysql mysql:5.7
```

```sql
CREATE DATABASE `dbname` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```
