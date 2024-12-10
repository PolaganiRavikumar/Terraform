resource "aws_route53_record" "expense" {
   count = length(var.aws_instance_names)
   zone_id = var.zone_id
   name = var.aws_instance_names[count.index]=="frontend" ? var.domain_name : "${var.aws_instance_names[count.index]}.${var.domain_name}"
   type = "A"
   ttl = 1
   records = var.aws_instance_names[count.index]== "frontend" ? [aws_instance.expense[count.index].public_ip] :[aws_instance.expense[count.index].private_ip]
   allow_overwrite = true
   
}