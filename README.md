# README

## 开发配置

### 数据库创建

```
docker run -d      --name db-for-mangosteen      -e POSTGRES_USER=mangosteen      -e POSTGRES_PASSWORD=123456      -e POSTGRES_DB=mangosteen_dev      -e PGDATA=/var/lib/postgresql/data/pgdata      -v mangosteen-data:/var/lib/postgresql/data      --network=network1      postgres:14
```
### 创建测试环境数据库
```
RAILS_ENV=test bin/rails db:create
```
###  创建测试环境表
```
RAILS_ENV=test bin/rails db:migrate
```

bin/rails generate rspec:request validation_codes


### 添加可执行权限
chmod +x bin/pack_for_host.sh

chmod +x bin/setup_host.sh