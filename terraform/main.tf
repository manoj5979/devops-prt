provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "k8s_node" {
  ami           = "ami-0fef201115eefe936"
  instance_type = "t2.micro"
  key_name      = "technova"

  tags = {
    Name = "k8s-node"
  }
}

output "k8s_node_public_ip" {
  value = aws_instance.k8s_node.public_ip
}
