output "vm_server_instance_id" {
  value = module.ec2-instance.id
}
output "vm_server_instance_public_dns" {
  value = module.ec2-instance.public_dns
}
output "vm_server_instance_public_ip" {
  value = module.ec2-instance.public_ip
}
output "vm_server_instance_private_ip" {
  value = module.ec2-instance.private_ip
}