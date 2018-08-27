**Usage**:

#### step 1
```
docker run \
--rm \
-it \
--privileged \
-v ~/data:/exports \
xujintao/nfs:1.0-centos
```

#### step 2
If your container ip is 172.17.0.2, you can get nfs mounting info like this:
```
showmount -e 172.17.0.2
```
