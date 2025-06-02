project_id = "orbital-expanse-461308-h6"
vpc_name = "apnamart-devuat"
auto_create_subnetworks = false
subnets = [
  {
    name                     = "apnamart-dev-uat-public-subnet-1"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.0.0/20"
    private_ip_google_access = true
    secondary_ranges = []
    },
    {   
    name                     = "apnamart-dev-uat-public-subnet-2"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.16.0/20"
    private_ip_google_access = true
    secondary_ranges = []
    },
    {
    name                     = "apnamart-dev-uat-application-subnet-1"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.32.0/20"
    private_ip_google_access = true
    secondary_ranges = []
    },
    {
    name                     = "apnamart-dev-uat-application-subnet-2"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.48.0/20"
    private_ip_google_access = true
    secondary_ranges = []
    },
  {
    name                     = "apnamart-dev-uat-application-subnet-3"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.64.0/20"
    private_ip_google_access = true
    secondary_ranges = []
  },
  {
    name                     = "apnamart-dev-uat-application-subnet-4"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.80.0/20"
    private_ip_google_access = true
    secondary_ranges = []
  },
  {
    name                     = "apnamart-dev-uat-db-middleware-subnet-1"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.96.0/20"
    private_ip_google_access = true 
    secondary_ranges = []
    },  
    {
    name                     = "apnamart-dev-uat-db-middleware-subnet-2"
    region                   = "asia-south1"
    ip_cidr_range            = "10.0.112.0/20"  
    private_ip_google_access = true 
    secondary_ranges = []
    }

]


aggregation_interval = "INTERVAL_5_SEC"

flow_sampling = "0.5"

metadata = "INCLUDE_ALL_METADATA"

service_projects = []

routers = {
  "router-asia-south1" = {
    network = "apnamart-devuat-router"
    region  = "asia-south1"
    bgp_asn = 64514
  }
}

nats = [ {
  name = "apnamart-devuat-nat"
  router_name = "router-asia-south1"
  nat_region = "asia-south1"
  nat_ip_allocate_option = "AUTO_ONLY"
  source_subnet_ranges = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  static_ips = []
} ]
