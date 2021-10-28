# local-k8s-vagrant
Scaffolding for Kubernetes Cluster with multi node architecture for local development and testing. It is a high availibity cluster with openebs jiva as default StorageClass for replicating the persistent data accross all three VMs.

### Notes

- It uses microk8s variant of Kubernetes.
- Ansible and vagrant must be preinstalled.

### SSH into VMs

```ssh vagrant@192.168.60.4``` or ```ssh vagrant@192.168.60.5``` or ```ssh vagrant@192.168.60.6``` using password vagrant

### LoadBalancer

It install metallb loadbalancer execute command after logging into any vms

```microk8s.enable metallb```

and provide ip range when asked e.g. 192.168.60.100-192.168.60.200
