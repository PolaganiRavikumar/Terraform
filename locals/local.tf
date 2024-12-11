locals {
  domain_name="daws23d.online "
  zone_id="Z08963363AKMLW1HQRZ3"
  instance_type=var.environment=="prod" ? "t3.medium" : "t3.micro"
}