# terraform-aws-default-vpc

[![open-issues](https://img.shields.io/github/issues-raw/robc-io/terraform-aws-default-vpc?style=for-the-badge)](https://github.com/robc-io/terraform-aws-default-vpc/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/robc-io/terraform-aws-default-vpc?style=for-the-badge)](https://github.com/robc-io/terraform-aws-default-vpc/pulls)

## Features

This module returns the subnet ids and vpc id for the defualt subnet.

## Terraform Versions

For Terraform v0.12.0+

## Usage

```
module "this" {
    source = "github.com/robc-io/terraform-aws-default-vpc"
    tags = {
        stuff = "things"
    }
}
```
## Examples

- [defaults](https://github.com/robc-io/terraform-aws-default-vpc/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| tags | Map of tags to apply to default vpc | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| public\_subnets | n/a |
| subnet\_ids | n/a |
| vpc\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [robc-io](https://github.com/robc-io)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.