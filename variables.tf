variable "keyval-pair" {
 type = map(string)
 default = {
   example-ec2 = "virtual_machine" # Keys are a name you'd like to assign to the resource, values are the resource type
   example-s3 = "storage_account"  # Resource type may be one of: virtual_machine, key_vault, or storage_account
 }
}
