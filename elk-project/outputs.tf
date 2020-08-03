# output "ELK_node_public_ip" {
#   value = "${data.template_file.ansibleinventory.rendered}"  
# }

# data "template_file" "ansibleinventory" {
#   template = "${file("inventory.tmpl")}"

#   vars {
#         elkserver-dns = "${aws_instance.wb.public_dns}",
#         elkserver-ip = "${aws_instance.wb.public_ip}",
#         elkserver-id = "${aws_instance.wb.id}",
#   }
# }

resource "local_file" "inventory" {
    filename = "./host.ini"
    content     = <<-EOF
[elk]
${aws_instance.wb.public_ip}

    EOF
}
