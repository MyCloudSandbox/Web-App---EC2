# This Terraform configuration generates an RSA private key, extracts the corresponding public key, and creates an AWS key pair using the public key.

resource "tls_private_key" "MyLinuxBox" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_key" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}

resource "aws_key_pair" "my_linux_box_key" {
  key_name   = "MyLinuxBox"
  public_key = data.tls_public_key.MyLinuxBox.public_key_openssh
}
