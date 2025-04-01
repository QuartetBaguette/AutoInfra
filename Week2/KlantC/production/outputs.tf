output "instance_public_ip" {
  value = module.server.instance.public_ip
}

output "instance_private_ip" {
  value = module.server.instance.private_ip
}