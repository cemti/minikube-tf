terraform {
	required_providers {
		minikube = {
			source = "scott-the-programmer/minikube"
			version = "0.3.6"
		}
	}
}

variable "name" {
	type = string
}

variable "clusters" {
	type = number
}