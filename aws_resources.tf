resource "aws_instance" "webos1" {

  ami = var.ami
  instance_type = var.ins_type
  security_groups = [ "default" ]
  key_name = var.k_name

  tags = {
     name = "Web Server by TF"
}

}

resource "null_resource" "n1" {

connection {
  type = "ssh"
  user = "ec2-user"
  private_key = file("C:/Users/sriva/Downloads/aws_putty.pem")
  host = aws_instance.webos1.public_ip
  }

provisioner "remote-exec" {
   inline = [
      "sudo yum update -y",
      "sudo yum install docker -y",
      "sudo systemctl enable docker --now",
      "sudo docker run -itd -p 8080:80 vimal13/apache-webserver-php "
      ]
  }

}