# Install-Kubernetes-on-CentOs

## Configure Master node

Follow commands in [master.sh]

## Configure Slave node

Follow commands in [slave.sh]

## Create the yaml files for:
- Pod [pod.yaml]
- Service [service.yaml]
- Deployment [deployment.yaml]
- Replication Controller [replicationController.yaml]
- api [api.yaml]
To check nodes
```
kubectl get nodes
```

To check the pod 
```
kubectl get pods
```

To get information about pod

```
kubectl describe pod pod
```

## Configure the node for Horizontal Pod Autoscaling

### Create the following yaml files
- Heapster [heapster.yaml]
- hpa [hpa.yaml]
- custom metrics [./metrics-server]
- metrics [custom-metrics.yaml]


## Check the HPA
```
kubectl describe hpa hpaName
```

## Check the scaling using busy box

```
   kubectl run -i --tty load-generator --image=busybox /bin/sh
   
   while true; do wget -q -O- IPAddress:PortANumber; done
  
```
