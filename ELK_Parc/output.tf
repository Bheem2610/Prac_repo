output "worker1_ip" {
  value = aws_instance.worker1.public_ip
}

output "worker2_ip" {
  value = aws_instance.worker2.public_ip
}

output "elk_ip" {
  value = aws_instance.elk.public_ip
}

output "ansible_ip" {
  value = aws_instance.ansible.public_ip
}
