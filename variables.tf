variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "demo-eks-cluster"
}

variable "cluster_version" {
  default = "1.30"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "node_instance_type" {
  default = "t3.medium"
}

variable "desired_size" {
  default = 2
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}   