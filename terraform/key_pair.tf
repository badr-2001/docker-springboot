# ---------------------- SSH Keys ----------------------
resource "tls_private_key" "k8s_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "k8s_key" {
  key_name   = "k8s-cluster-key"
  public_key = tls_private_key.k8s_key.public_key_openssh
}

resource "local_file" "k8s_key_pem" {
  content         = tls_private_key.k8s_key.private_key_pem
  filename        = "${path.module}/k8s-cluster-key.pem"
  file_permission = "0400"
}

resource "tls_private_key" "bastion_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "bastion_key" {
  key_name   = "bastion-key"
  public_key = tls_private_key.bastion_key.public_key_openssh
}

resource "local_file" "bastion_key_pem" {
  content         = tls_private_key.bastion_key.private_key_pem
  filename        = "${path.module}/bastion-key.pem"
  file_permission = "0400"
}
