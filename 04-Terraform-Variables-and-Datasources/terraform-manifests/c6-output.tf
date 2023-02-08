output "instanceip" {
  value = aws_instance.myec2vm.public_ip
  }

output "instancedns" {
  value = aws_instance.myec2vm.public_dns
}