# vpc

Terraform module to manage vpc.

Creates a NAT gateway in each availability zone to ensure high availability.
NAT gateways are more expensive than smaller ec2 instances but are highly
available within each availability zone.
