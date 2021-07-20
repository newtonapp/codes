

So to summarize we have master and worker nodes on the master.

we have the ETCD cluster which stores information about the cluster

we have the Kube scheduler that is responsible for scheduling applications or containers on Nodes

We have different controllers that take care of different functions like the node control, replication,

controller etc..

we have the Kube api server that is responsible for orchestrating all operations within the cluster.

on the worker node.

we have the kubelet that listens for instructions from the Kube-apiserver and manages containers and

the kube-proxy

That helps in enabling communication between services within the cluster.