# Project 16 — Enable HTTPS Using AWS ACM

## Objective
Secure an application endpoint using an AWS Certificate Manager (ACM) certificate and an HTTPS Application Load Balancer.

## Tools Used
- AWS
- Terraform
- AWS Certificate Manager
- Application Load Balancer
- Amazon EC2

## Implementation
1. Use an approved existing VPC and two public subnets in different Availability Zones.
2. Use an approved, issued ACM certificate in `ap-south-1`.
3. Create an Application Load Balancer security group allowing HTTP and HTTPS.
4. Create an Application Load Balancer.
5. Register approved EC2 backend instances in a target group.
6. Configure an HTTPS listener on port 443 with the ACM certificate.
7. Configure an HTTP listener on port 80 to redirect requests to HTTPS.
8. Verify the HTTPS endpoint and certificate.

## Security
- HTTPS uses an ACM-managed certificate.
- HTTP requests are redirected to HTTPS.
- Backend instances must allow HTTP only from the ALB security group.
- No private keys or credentials are stored in this repository.
- Deployment requires company approval and an approved certificate, VPC, subnets, and backend instances.

## Files
- `versions.tf` — Terraform and AWS provider configuration.
- `variables.tf` — Network, certificate, and backend variables.
- `main.tf` — ALB, security group, target group, and listeners.
- `outputs.tf` — HTTPS endpoint and resource outputs.
- `terraform.tfvars.example` — Placeholder configuration.
- `.gitignore` — Excludes Terraform state and sensitive files.

## Status
Terraform configuration prepared. Validation and planning pending. AWS deployment and HTTPS verification pending company approval and approved resources.

## Deliverables
- Terraform source code in GitHub.
- HTTPS Application Load Balancer.
- HTTP-to-HTTPS redirect.
- Screenshot showing successful HTTPS access and certificate details.