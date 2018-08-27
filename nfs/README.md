## Quickstart

#### 1, create pv(hostpath type) for nfs
```
kubectl apply -f volumes/nfs/hostpath-pv.yaml
```

#### 2, create nfs rc and service
```
kubectl apply -f volumes/nfs/nfs-rc.yaml
kubectl apply -f volumes/nfs/nfs-service.yaml
```

#### 3, create pv(nfs type) for app
```
kubectl apply -f volumes/nfs/nfs-pv.yaml
```
