# ---------------------- Outputs ----------------------
output "master_node_public_ip" {
  value = aws_instance.master_node.public_ip
}

output "slave_node_1_public_ip" {
  value = aws_instance.slave_node_1.public_ip
}

output "slave_node_2_public_ip" {
  value = aws_instance.slave_node_2.public_ip
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}
