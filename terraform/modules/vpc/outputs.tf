output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.this.id

}

output "vpc_arn" {
  description = "ARN of the VPC"
  value       = aws_vpc.this.arn

}

output "vpc_cidr" {
  description = "CIDR block assigned to VPC"
  value       = aws_vpc.this.cidr_block

}