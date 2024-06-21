output "instance_ids" {
  description = "IDs of the created instances"
  value       = aws_instance.this.*.id
}

output "instance_public_ips" {
  description = "Public IPs of the created instances"
  value       = aws_instance.this.*.public_ip
}
