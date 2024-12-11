variable "instance_names" {
    type = list(string)
    default = [ "mysql","frontend","backend" ]
    description = "description"
 }
 variable "environment" {
    default = "prod"
   
 }
