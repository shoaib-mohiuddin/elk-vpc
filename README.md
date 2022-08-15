# elk-vpc
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.nat_ip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.internet_route_tbl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.nat_route_tbl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.app_private_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.app_private_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.app_private_c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.kibana_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.monitor_private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.app_private_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.app_private_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.app_private_c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.kibana_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.monitor_private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The region to deploy the resources | `string` | n/a | yes |
| <a name="input_az_a"></a> [az\_a](#input\_az\_a) | The AZ to deploy the resources | `string` | n/a | yes |
| <a name="input_az_b"></a> [az\_b](#input\_az\_b) | The AZ to deploy the resources | `string` | n/a | yes |
| <a name="input_az_c"></a> [az\_c](#input\_az\_c) | The AZ to deploy the resources | `string` | n/a | yes |
| <a name="input_cidr_app_private_a"></a> [cidr\_app\_private\_a](#input\_cidr\_app\_private\_a) | This is the CIDR of the Application Subnet Private-a | `any` | n/a | yes |
| <a name="input_cidr_app_private_b"></a> [cidr\_app\_private\_b](#input\_cidr\_app\_private\_b) | This is the CIDR of the Application Subnet Private-b | `any` | n/a | yes |
| <a name="input_cidr_app_private_c"></a> [cidr\_app\_private\_c](#input\_cidr\_app\_private\_c) | This is the CIDR of the Application Subnet Private-c | `any` | n/a | yes |
| <a name="input_cidr_kibana_public"></a> [cidr\_kibana\_public](#input\_cidr\_kibana\_public) | This is the CIDR of the Kibana Public Subnet | `any` | n/a | yes |
| <a name="input_cidr_monitor_private"></a> [cidr\_monitor\_private](#input\_cidr\_monitor\_private) | This is the CIDR of the Monitoring Subnet Private | `any` | n/a | yes |
| <a name="input_cidr_vpc"></a> [cidr\_vpc](#input\_cidr\_vpc) | This is the CIDR of the VPC | `any` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | This is the VPC name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->