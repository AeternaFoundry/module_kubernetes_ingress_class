output "ingress_classes_id" {
  description = "Map of id values across all ingress_classes, keyed the same as var.ingress_classes except keys with no id are omitted"
  value       = { for k, v in kubernetes_ingress_class.ingress_classes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ingress_classes_metadata" {
  description = "Map of metadata values across all ingress_classes, keyed the same as var.ingress_classes except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_ingress_class.ingress_classes : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "ingress_classes_spec" {
  description = "Map of spec values across all ingress_classes, keyed the same as var.ingress_classes except keys with no spec are omitted"
  value       = { for k, v in kubernetes_ingress_class.ingress_classes : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

