resource "minikube_cluster" "cluster" {
	count = var.clusters
	driver = "hyperv"
	vm = true
	cluster_name = "${var.name}-${count.index + 1}"
	memory = "2048mb"
	nodes = count.index + 1
}