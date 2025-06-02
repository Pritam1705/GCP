output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.network.vpc_id
}

output "vpc_name" {
  description = "Name of the created VPC"
  value       = module.network.vpc_name  
}
output "subnets" {
  description = "List of subnet self links"
  value       = module.network.subnet_names
}


output "subnet_ids" {
  description = "Subnet IDs from the network module"
  value       = module.network.subnet_ids
}

output "service_projects" {
  value = module.network.attached_service_projects
}

output "cloud_routers" {
  description = "Map of created Cloud Routers"
  value       = module.network.cloud_routers
  
}

output "cloud_nat_names" {
  description = "Names of all Cloud NATs created"
  value       = module.network.cloud_nat_names
  
}

output "nat_ip_allocate_options" {
  description = "NAT IP Allocation Methods"
  value       = module.network.nat_ip_allocate_options
  
}

output "static_nat_ips" {
  description = "List of allocated static NAT IPs per NAT"
  value       = module.network.static_nat_ips
  
}
