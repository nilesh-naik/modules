output "asg_name" {
    value       = aws_autoscaling_group.example.name
    description = "Name of the Auto Scaling group"
}

output "instance_security_group_id" {
    value = aws_security_group.instance.id
    description = "ID of the EC2 instance security group"
}