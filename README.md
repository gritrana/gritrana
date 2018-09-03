![](https://github.com/gritrana/gritrana/blob/master/cloudapp.jpg)

### mysql存储持久化

#### 1，进到services文件夹
```
cd gritrana/services
```

#### 2，安装nfs
要先修改一下nfs-service.yaml的集群ip，因为我设置的10.254.0.7
```
kubectl label nodes kube-node1 beta.kubernetes.io/nfs-ready=true
kubectl apply -f volumes/nfs/nfs-pv.yaml
kubectl apply -f volumes/nfs/nfs-pvc.yaml
kubectl apply -f volumes/nfs
```
验证一下nfs，kubectl exec nfs-xxx -- showmount -e

#### 3，安装mysql-master
```
kubectl apply -f db/mysql/mysql-pv.yaml
kubectl apply -f db/mysql/mysql-pvc.yaml
kubectl apply -f db/mysql/mysql-master-statefulset.yaml
```
![](https://github.com/gritrana/gritrana/blob/master/mysql-nfs.jpg)