output "master_node_private_ip" {
  value = aws_instance.master_node.private_ip
}

output "slave_node_1_private_ip" {
  value = aws_instance.slave_node_1.private_ip
}

output "slave_node_2_private_ip" {
  value = aws_instance.slave_node_2.private_ip
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}
