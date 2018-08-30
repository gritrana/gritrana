## Quickstart

#### 1, create label
```
kubectl label nodes kube-node1 beta.kubernetes.io/nfs-ready=true
```

#### 2, create nfs
```
kubectl apply -f volumes/nfs
```
