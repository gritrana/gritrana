## Quickstart

#### 1, create pv(hostpath type) for nfs
```
kubectl apply -f volumes/nfs/hostpath-pv.yaml
```

#### 2, create label
```
kubectl label nodes kube-node1 beta.kubernetes.io/nfs-ready=true
```

#### 3, create nfs rc and service
```
kubectl apply -f volumes/nfs/nfs-rc.yaml
kubectl apply -f volumes/nfs/nfs-service.yaml
```
