output "test_instance_ip" {
  value = module.test.instance.public_ip
}

output "prod_instance_ips" {
  value = module.prod[*].instance.public_ip
}

output "loadbalancer_ip" {
  value = module.loadbalancer.instance.public_ip
}