output "az" {
    value = aws_instance.prod.availability_zone
}

output "public_ip" {
    value = aws_instance.prod.public_ip
}

output "public_dns" {
    value = aws_instance.prod.public_dns
}

output "instance_id" {
    value = aws_instance.prod.id
}

output "private_ip" {
    value = aws_instance.prod.private_ip
    sensitive = true
}
