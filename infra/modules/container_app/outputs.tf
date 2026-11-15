output "url" {
  description = "URL publica HTTPS."
  value       = "https://${azurerm_container_app.this.ingress[0].fqdn}"
}

output "environment_created" {
  description = "true si este modulo creo el ambiente; false si la app usa uno existente."
  value       = var.environment_id == null
}

output "environment_mode" {
  description = "Modo pedido para el ambiente; express no admite secretos de Key Vault."
  value       = one(azapi_resource.environment[*].body.properties.environmentMode)
}

output "environment_location" {
  description = "Region donde quedaron el ambiente y la app, si este modulo creo el ambiente."
  value       = one(azapi_resource.environment[*].location)
}
