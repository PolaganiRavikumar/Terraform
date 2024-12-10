variable "aws_instance_names" {
    type = list(string)
    default = [ "mysql","frontend","backend" ]  
}
variable "comman_tags" {
    type = map
    default = {
        project="expense"
        environment="dev"
        terraform="true"
    }
}
variable "zone_id" {
    default = "Z08963363AKMLW1HQRZ3"
  
}
variable "domain_name" {
    default = "daws23d.online"
  
}