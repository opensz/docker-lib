



## 创建oracle实例

'''
docker run --name <container name> \
-p <host port>:1521 -p <host port>:5500 \
-e TZ=Asia/Shanghai \
-e ORACLE_SID=<your SID> \
-e ORACLE_PDB=<your PDB name> \
-e ORACLE_PWD=<your database passwords> \
-e ORACLE_CHARACTERSET=<your character set> \
-v [<host mount point>:]/opt/oracle/oradata \
-v [<host mount point>:]:/opt/oracle/scripts/startup \
oracle/database:12.2.0.1-ee
'''

## 更改oracle内存大小

'''
sqlplus sys/<your password>@//localhost:1521/<your SID> as sysdba

--显示最大分配内存
show parameter sga;     

--修改最大分配内存
alter system set sga_max_size=$size scope=spfile;
alter system set sga_target=$size scope=spfile;

-- 修改内存占用大小，修改完了需要重启才能生效
shutdown immediate
startup

'''

## oracle sequence迁移

oracle sequence迁移

在原oracle上执行生成sql后在新库执行
'''
select 'drop sequence '||sequence_name||';'
from dba_sequences where sequence_owner='[user]';

select 'create sequence '||sequence_name||
　　' minvalue '||min_value||
　　' maxvalue '||max_value||
　　' start with '|| to_number(last_number +1000) ||
　　' increment by '||increment_by||
　　(case when cache_size=0 then ' nocache' else ' cache '||cache_size end) ||';'
from dba_sequences
where sequence_owner='[user]';
'''

## oracle 官方参考

https://github.com/oracle/docker-images/blob/master/OracleDatabase/SingleInstance/README.md
