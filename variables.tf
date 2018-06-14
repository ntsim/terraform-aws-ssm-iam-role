variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  type        = "string"
  description = "Name (e.g. `chamber`)"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "kms_key_arn" {
  description = "ARN of the KMS key which will decrypt SSM secret strings"
}

variable "assume_role_arns" {
  type        = "list"
  description = "List of ARNs to allow assuming the role. Could be AWS services or accounts, Kops nodes, IAM users or groups"
}

variable "ssm_actions" {
  type        = "list"
  default     = ["ssm:GetParametersByPath", "ssm:GetParameters"]
  description = "SSM actions to allow"
}

variable "ssm_resources" {
  type        = "list"
  description = "SSM resources to apply the actions"
}

variable "max_session_duration" {
  default     = 3600
  description = "The maximum session duration (in seconds) for the role. Can have a value from 1 hour to 12 hours"
}