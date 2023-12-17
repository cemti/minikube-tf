# Remark
The Terraform plan was tested with Hyper-V, but should work with other hypervisors.
# Default behaviour
By default, two minikube clusters are created:
1. Single-node
2. Two-node

Each cluster (resource) has the number of nodes equal to its index + 1.
# Demonstration
    > minikube apply
    ...
    minikube_cluster.cluster[1]: Creation complete after 2m52s [id=minikube-2]
    minikube_cluster.cluster[0]: Still creating... [3m0s elapsed]
    minikube_cluster.cluster[0]: Still creating... [3m10s elapsed]
    minikube_cluster.cluster[0]: Still creating... [3m20s elapsed]
    minikube_cluster.cluster[0]: Still creating... [3m30s elapsed]
    minikube_cluster.cluster[0]: Still creating... [3m40s elapsed]
    minikube_cluster.cluster[0]: Still creating... [3m50s elapsed]
    minikube_cluster.cluster[0]: Still creating... [4m0s elapsed]
    minikube_cluster.cluster[0]: Still creating... [4m10s elapsed]
    minikube_cluster.cluster[0]: Still creating... [4m20s elapsed]
    minikube_cluster.cluster[0]: Still creating... [4m30s elapsed]
    minikube_cluster.cluster[0]: Creation complete after 4m39s [id=minikube-1]
    
    Apply complete! Resources: 2 added, 0 changed, 0 destroyed.


    > minikube status --profile=minikube-1
    minikube-1
    type: Control Plane
    host: Running
    kubelet: Running
    apiserver: Running
    kubeconfig: Configured


    > minikube status --profile=minikube-2
    minikube-2
    type: Control Plane
    host: Running
    kubelet: Running
    apiserver: Running
    kubeconfig: Configured
    
    minikube-2-m02
    type: Worker
    host: Running
    kubelet: Running

