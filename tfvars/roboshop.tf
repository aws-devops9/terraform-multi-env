resource "aws_instance" "web" {
  for_each = var.instances_names # We are using foreach to iterate the map in variables
  ami           = data.aws_ami.centos8.id
  instance_type = each.value

  tags = {
    Name = each.key
    Environment = "Dev"
    Project = "Roboshop"
    Terraform = "true"
  }
}

# find the below Route 53 module in Google 
resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip]
  # Here startswith is the function 
}