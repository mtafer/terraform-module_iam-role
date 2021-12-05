# AWS Identity and Access Management (IAM) Role module

These types of resources are supported:

* [IAM role](https://www.terraform.io/docs/providers/aws/r/iam_role.html)
* [IAM policy](https://www.terraform.io/docs/providers/aws/r/iam_policy.html)

## Terraform versions

Terraform 0.12.

## Usage

`iam-role`:
```hcl
module "iam_role" {
    source = "../"
    # source = "git::https://git.sami.int.thomsonreuters.com/cloud-service-catalog/aws-tf-iam-roles.git?ref=v1.0.0"
    iam_role_name        = "a206256-instance-role-commodoties-testing"
    iam_role_description = "a206256-instance-role-commodoties-testing"
    # iam_role_path           = "/service-role/"
    iam_policy_name         = "a206256-policy-commodoties-testing"
    iam_policy_description  = "a206256-policy-commodoties-testing"
    assume_role_policy_file = "assume-policy.json.tpl"
    role_policy_file        = "policy.json.tpl"
    tags                    = "${var.tags}"
}
```