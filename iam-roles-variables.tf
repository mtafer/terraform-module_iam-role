variable "tags" {
  description = "A map of tags to add to all resources."
  type        = "map"
  default     = {}
}

variable "iam_policy_name" {
  description = "(Optional) The name of the IAM policy to access AWS Backup."
}

variable "iam_policy_description" {
  description = "Description of the policy."
}

variable "iam_role_name" {
  description = "(Optional) The name of the IAM policy to access AWS Backup."
}

variable "iam_role_description" {
  description = "Description of the role."
}

variable "assume_role_policy_file" {
  description = "File of the assume role policy (file.json.tpl)."
}

variable "role_policy_file" {
  description = "File of the role policy (file.json.tpl)."
}

variable "iam_role_path" {
  description = "Path for the role"
  default = "/"
}
