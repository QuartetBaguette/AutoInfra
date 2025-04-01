module "vpc" {
    source = "../../modules/VPC"
  
    vpc_name = "TestVPCKlantA"
    vpc_cidr = "10.0.0.0/16"
    vpc_dns_support = true
    vpc_dns_hostnames = true
    subnet_cidr = "10.0.1.0/24"
    subnet_map_public_ip_on_launch = true
    subnet_name = "PublicSubnetKlantA"
    gw_name = "MainKlantA"
    routetable_name = "RouteTableKlantA"
    routetable_cidr = "0.0.0.0/0"
}

module "securitygroup" {
    source = "../../modules/SecurityGroup"
    vpc_id = module.vpc.vpc.id
    https_allow_cidr = "0.0.0.0/0"
    http_allow_cidr = "0.0.0.0/0"
    ssh_allow_cidr = "0.0.0.0/0"
}

module "server" {
    source = "../../modules/Server"

    instance_ami_id = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"
    instance_key_name = "ruben"
    security_group_ssh_http_https_outbound = module.securitygroup.security_group_ssh_http_https_outbound.id
    instance_subnet_id = module.vpc.vpc_subnet.id
}