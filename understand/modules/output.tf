output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of our secure VPC network"
}

output "private_subnet_ids" {
  value       = [aws_subnet.private_1.id, aws_subnet.private_2.id]
  description = "The multi-zone private subnet IDs for highly-available compute"
}