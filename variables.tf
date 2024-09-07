variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16" # user can override
}
variable "enable_dns_hostnemes" {
    type = bool
    default = true
}
variable "common_tags" {
    type = map 
    default = {} 
}
variable "vpc_tags" {
    type = map 
    default = {}
  
}