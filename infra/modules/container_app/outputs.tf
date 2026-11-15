output "url" {
  description = "URL publica HTTPS."
  value       = "https://${azurerm_container_app.this.ingress[0].fqdn}"
}

output "environment_mode" {
  description = "Modo pedido para el ambiente; express no admite secretos de Key Vault."
  value       = azapi_resource.environment.body.properties.environmentMode
}
