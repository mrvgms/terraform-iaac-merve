resource "null_resource" "safag" {
    triggers = {
        always_run = "${timestamp()}"
    }


    provisioner "remote-exec" {
    connection {
        type     = "ssh"
        user     = "centos"
        private_key = "${file("~/.ssh/id_rsa")}"
        host     = "${aws_instance.web.public_ip}"
    }


        inline = [
           "sudo yum install telnet -y",
           "sudo mkdir /tmp/centos",
           "w",
           "free -m",
           "sleep 5",
           "sudo yum install wget -y",
           "wget https://wordpress.org/latest.tar.gz"
        ]

    }
  
}