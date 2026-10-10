output "bedrockagent_data_sources_id" {
  description = "Map of id values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bedrockagent_data_sources_data_deletion_policy" {
  description = "Map of data_deletion_policy values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.data_deletion_policy if v.data_deletion_policy != null && length(v.data_deletion_policy) > 0 }
}
output "bedrockagent_data_sources_data_source_configuration" {
  description = "Map of data_source_configuration values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.data_source_configuration if v.data_source_configuration != null && length(v.data_source_configuration) > 0 }
}
output "bedrockagent_data_sources_data_source_id" {
  description = "Map of data_source_id values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.data_source_id if v.data_source_id != null && length(v.data_source_id) > 0 }
}
output "bedrockagent_data_sources_description" {
  description = "Map of description values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagent_data_sources_knowledge_base_id" {
  description = "Map of knowledge_base_id values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.knowledge_base_id if v.knowledge_base_id != null && length(v.knowledge_base_id) > 0 }
}
output "bedrockagent_data_sources_name" {
  description = "Map of name values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagent_data_sources_region" {
  description = "Map of region values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagent_data_sources_server_side_encryption_configuration" {
  description = "Map of server_side_encryption_configuration values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.server_side_encryption_configuration if v.server_side_encryption_configuration != null && length(v.server_side_encryption_configuration) > 0 }
}
output "bedrockagent_data_sources_vector_ingestion_configuration" {
  description = "Map of vector_ingestion_configuration values across all bedrockagent_data_sources, keyed the same as var.bedrockagent_data_sources"
  value       = { for k, v in aws_bedrockagent_data_source.bedrockagent_data_sources : k => v.vector_ingestion_configuration if v.vector_ingestion_configuration != null && length(v.vector_ingestion_configuration) > 0 }
}

