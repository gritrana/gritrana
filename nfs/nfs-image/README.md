## Usage

#### step 1
**default mount path is "/exports"**(**默认挂载路径是"/exports"**)
```
docker run \
--rm \
-it \
--privileged \
-v ~/nfsdata:/exports \
xujintao/nfs:1.1-centos
```
**customized mount path**(**自定义挂载路径可以这样**)
```
docker run \
--rm \
-it \
--privileged \
-v ~/nfsdata:/exports \
xujintao/nfs:1.1-centos \
/exports/mysql/master \
/exports/mysql/slave0 \
/exports/mysql/slave1
```

#### step 2
If the ip of container in which nfs runs is 172.17.0.2, you can get nfs mounting info like this:
如果你运行nfs的容器ip是172.17.0.2，那么可以这样查询nfs挂载信息
```
showmount -e 172.17.0.2
```
