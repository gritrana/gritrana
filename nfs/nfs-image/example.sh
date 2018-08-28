docker run \
--rm \
-it \
--privileged \
-v ~/nfsdata:/exports \
xujintao/nfs:1.1-centos \
/exports/mysql/master \
/exports/mysql/slave0 \
/exports/mysql/slave1
