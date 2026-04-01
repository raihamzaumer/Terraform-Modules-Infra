variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "force_destroy" {
  description = "Delete bucket even if it has objects"
  type        = bool
  default     = false
}

#############################################
# VERSIONING
#############################################
variable "enable_versioning" {
  description = "Enable versioning"
  type        = bool
  default     = true
}

#############################################
# PUBLIC ACCESS BLOCK
#############################################
variable "block_public_acls" {
  type    = bool
  default = true
}

variable "block_public_policy" {
  type    = bool
  default = true
}

variable "ignore_public_acls" {
  type    = bool
  default = true
}

variable "restrict_public_buckets" {
  type    = bool
  default = true
}

#############################################
# ENCRYPTION
#############################################
variable "sse_algorithm" {
  description = "Encryption algorithm"
  type        = string
  default     = "AES256"
}

#############################################
# TAGS
#############################################
variable "tags" {
  description = "Tags for S3 bucket"
  type        = map(string)
  default     = {}
}