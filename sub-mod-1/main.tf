locals {

  # New base names are generated as specified in the instructions: 
  # For type "virtual_machine", characters are appended to the existing base name and it is truncated to be 15 characters.
  # For type "key_vault", "kv-" is appended to the front of the base name and the rest is converted to lower case.
  # For type "storage_account", "sa" is appended to the front of the name, dashes are removed, and all characters
  #    are converted to lower case.

  new_base_name = "${var.resource_type == "virtual_machine" ? substr("vm-${var.base_name}-00",0,15) :
                  var.resource_type == "key_vault" ? "kv-${lower(var.base_name)}" :
                  var.resource_type == "storage_account" ? replace("sa${lower(var.base_name)}", "-", "") :
                  "unknown-res-type-${var.base_name}"}"
}
