# ---------------------- EC2 Instances ----------------------
resource "aws_instance" "bastion" {
  ami                    = var.ami
  instance_type          = var.ec2_instance
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = aws_key_pair.bastion_key.key_name
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]

  tags = {
    Name = "Bastion"
  }
}

resource "aws_instance" "master_node" {
  ami                    = var.ami
  instance_type          = var.ec2_instance
  subnet_id              = aws_subnet.private_subnet.id
  key_name               = aws_key_pair.k8s_key.key_name
  vpc_security_group_ids = [aws_security_group.k8s_sg.id]

  depends_on = [aws_key_pair.k8s_key]

  tags = {
    Name = "master-node"
  }
}

resource "aws_instance" "slave_node_1" {
  ami                    = var.ami
  instance_type          = var.ec2_instance
  subnet_id              = aws_subnet.private_subnet.id
  key_name               = aws_key_pair.k8s_key.key_name
  vpc_security_group_ids = [aws_security_group.k8s_sg.id]

  depends_on = [aws_key_pair.k8s_key]

  tags = {
    Name = "slave-node-1"
  }
}

resource "aws_instance" "slave_node_2" {
  ami                    = var.ami
  instance_type          = var.ec2_instance
  subnet_id              = aws_subnet.private_subnet.id
  key_name               = aws_key_pair.k8s_key.key_name
  vpc_security_group_ids = [aws_security_group.k8s_sg.id]

  depends_on = [aws_key_pair.k8s_key]

  tags = {
    Name = "slave-node-2"
  }
}
