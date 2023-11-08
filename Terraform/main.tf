resource "aws_key_pair" "devops_asminkey" {
  key_name   = "id_rsa"
  public_key = file("id_rsa.pub")
}

resource "aws_instance" "devops-asmin" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.devops-lab.key_name
  vpc_security_group_ids = ["sg-0cbce4405032ea505"]
  tags = {
    Name      = "devops_instace"
    Project   = "DevOps"
    ManagedBy = "Terraform"
  }

  provisioner "file" {
    source      = "deployapp.sh"
    destination = "/tmp/deployapp.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/deployapp.sh",
      "sudo /tmp/deployapp.sh"
    ]
  }

  connection {
    user        = var.USER
    private_key = file("id_rsa")
    host        = self.public_ip
  }
}

output "PublicIP" {
  value = aws_instance.devops-inst.public_ip
}

output "PrivateIP" {
value = aws_instance.devops-inst.private_ip
}
}
