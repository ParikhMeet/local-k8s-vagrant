# local-k8s-vagrant
Scaffolding for Kubernetes Cluster with multi node architecture for local development and testing. It is a high availibity cluster with openebs jiva as default StorageClass for replicating the persistent data accross all three VMs.

### Bringing up the environment
In the root directory of the project. Execute below commands
- ```vagrant up```
- ```sh setup.sh```

### Notes

- It uses microk8s variant of Kubernetes.
- Ansible and vagrant must be preinstalled.
- Ubuntu is used as guest OS.

### SSH into VMs

```ssh vagrant@192.168.60.4``` or ```ssh vagrant@192.168.60.5``` or ```ssh vagrant@192.168.60.6``` using password ```vagrant```

### LoadBalancer

If needed, install metallb loadbalancer by executing command after logging into any vms

```microk8s.enable metallb```

and provide ip range when asked e.g. ```192.168.60.100-192.168.60.200```
