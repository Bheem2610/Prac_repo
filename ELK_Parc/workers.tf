resource "aws_instance" "worker1" {

  ami           = var.ami_id
  instance_type = "c7i-flex.large"

  key_name  = var.key_name
  subnet_id = "subnet-05576191f3d80d112"

  vpc_security_group_ids = [
    aws_security_group.workers.id
  ]

  tags = {
    Name = "worker1"
  }
}
resource "aws_instance" "worker2" {

  ami           = var.ami_id
  instance_type = "c7i-flex.large"

  key_name  = var.key_name
  subnet_id = "subnet-087a58297f03ac29f"

  vpc_security_group_ids = [
    aws_security_group.workers.id
  ]

  tags = {
    Name = "worker2"

  }
}
resource "aws_instance" "elk" {

  ami = var.ami_id

  instance_type = "m7i-flex.large"

  key_name  = var.key_name
  subnet_id = "subnet-03d2bbf82a73df95f"

  vpc_security_group_ids = [
    aws_security_group.workers.id
  ]

  tags = {
    Name = "elk-server"
  }
}
resource "aws_instance" "ansible" {

  ami = var.ami_id

  instance_type = "t3.small"

  key_name  = var.key_name
  subnet_id = "subnet-03d2bbf82a73df95f"

  vpc_security_group_ids = [
    aws_security_group.workers.id
  ]

  tags = {
    Name = "ansible-master"
  }
}
