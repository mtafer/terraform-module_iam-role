terraform {
  required_version = ">= 0.12"

  backend "s3" {
    key          = "state-file-commodoties-testing"
    session_name = "commodoties-testing-deployment"
  }
}

provider "aws" {
  region = "${var.region}"
}

module "iam_role" {
    source = "../"
    # source = "git::https://git.sami.int.thomsonreuters.com/cloud-service-catalog/aws-tf-iam-roles.git?ref=1.0.0"
    iam_role_name        = "a206256-instance-role-commodoties-testing"
    iam_role_description = "a206256-instance-role-commodoties-testing"
    # iam_role_path           = "/service-role/"
    iam_policy_name         = "a206256-policy-commodoties-testing"
    iam_policy_description  = "a206256-policy-commodoties-testing"
    assume_role_policy_file = "example/assume-policy.json.tpl"
    role_policy_file        = "example/policy.json.tpl"
    tags                    = "${var.tags}"
}