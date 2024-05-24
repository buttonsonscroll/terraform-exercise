module "my-module" {
  for_each = var.keyval-pair 
  source = "./sub-mod-1"
  base_name = each.key
  resource_type = each.value
}

output "resource-names" {
  value = {
    for k,v in module.my-module : k => v
  }
}
