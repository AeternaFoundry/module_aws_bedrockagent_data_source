variable "bedrockagent_data_sources" {
  description = <<EOT
Map of bedrockagent_data_sources, attributes below
Required:
    - knowledge_base_id
    - name
Optional:
    - data_deletion_policy
    - description
    - region
    - data_source_configuration (block):
        - confluence_configuration (optional, block):
            - crawler_configuration (optional, block):
                - filter_configuration (optional, block):
                    - pattern_object_filter (optional, block):
                        - filters (optional, block):
                            - exclusion_filters (optional)
                            - inclusion_filters (optional)
                            - object_type (required)
                    - type (required)
            - source_configuration (optional, block):
                - auth_type (required)
                - credentials_secret_arn (required)
                - host_type (required)
                - host_url (required)
        - managed_knowledge_base_connector_configuration (optional, block):
            - connector_parameters (optional)
            - deletion_protection_configuration (optional, block):
                - deletion_protection_status (required)
                - deletion_protection_threshold (optional)
            - media_extraction_configuration (optional, block):
                - audio_extraction_configuration (optional, block):
                    - audio_extraction_status (required)
                - image_extraction_configuration (optional, block):
                    - image_extraction_status (required)
                - video_extraction_configuration (optional, block):
                    - video_extraction_status (required)
        - s3_configuration (optional, block):
            - bucket_arn (required)
            - bucket_owner_account_id (optional)
            - inclusion_prefixes (optional)
        - salesforce_configuration (optional, block):
            - crawler_configuration (optional, block):
                - filter_configuration (optional, block):
                    - pattern_object_filter (optional, block):
                        - filters (optional, block):
                            - exclusion_filters (optional)
                            - inclusion_filters (optional)
                            - object_type (required)
                    - type (required)
            - source_configuration (optional, block):
                - auth_type (required)
                - credentials_secret_arn (required)
                - host_url (required)
        - share_point_configuration (optional, block):
            - crawler_configuration (optional, block):
                - filter_configuration (optional, block):
                    - pattern_object_filter (optional, block):
                        - filters (optional, block):
                            - exclusion_filters (optional)
                            - inclusion_filters (optional)
                            - object_type (required)
                    - type (required)
            - source_configuration (optional, block):
                - auth_type (required)
                - credentials_secret_arn (required)
                - domain (required)
                - host_type (required)
                - site_urls (required)
                - tenant_id (optional)
        - type (required)
        - web_configuration (optional, block):
            - crawler_configuration (optional, block):
                - crawler_limits (optional, block):
                    - max_pages (optional)
                    - rate_limit (optional)
                - exclusion_filters (optional)
                - inclusion_filters (optional)
                - scope (optional)
                - user_agent (optional)
            - source_configuration (optional, block):
                - url_configuration (optional, block):
                    - seed_urls (optional, block):
                        - url (optional)
    - server_side_encryption_configuration (block):
        - kms_key_arn (optional)
    - vector_ingestion_configuration (block):
        - chunking_configuration (optional, block):
            - chunking_strategy (required)
            - fixed_size_chunking_configuration (optional, block):
                - max_tokens (required)
                - overlap_percentage (required)
            - hierarchical_chunking_configuration (optional, block):
                - level_configuration (optional, block):
                    - max_tokens (required)
                - overlap_tokens (required)
            - semantic_chunking_configuration (optional, block):
                - breakpoint_percentile_threshold (required)
                - buffer_size (required)
                - max_token (required)
        - custom_transformation_configuration (optional, block):
            - intermediate_storage (optional, block):
                - s3_location (optional, block):
                    - uri (required)
            - transformation (optional, block):
                - step_to_apply (required)
                - transformation_function (optional, block):
                    - transformation_lambda_configuration (optional, block):
                        - lambda_arn (required)
        - parsing_configuration (optional, block):
            - bedrock_data_automation_configuration (optional, block):
                - parsing_modality (optional)
            - bedrock_foundation_model_configuration (optional, block):
                - model_arn (required)
                - parsing_modality (optional)
                - parsing_prompt (optional, block):
                    - parsing_prompt_string (required)
            - parsing_strategy (required)
EOT

  type = map(object({
    knowledge_base_id    = string
    name                 = string
    data_deletion_policy = optional(string)
    description          = optional(string)
    region               = optional(string)
    data_source_configuration = optional(list(object({
      confluence_configuration = optional(list(object({
        crawler_configuration = optional(list(object({
          filter_configuration = optional(list(object({
            pattern_object_filter = optional(list(object({
              filters = optional(list(object({
                exclusion_filters = optional(set(string))
                inclusion_filters = optional(set(string))
                object_type       = string
              })))
            })))
            type = string
          })))
        })))
        source_configuration = optional(list(object({
          auth_type              = string
          credentials_secret_arn = string
          host_type              = string
          host_url               = string
        })))
      })))
      managed_knowledge_base_connector_configuration = optional(list(object({
        connector_parameters = optional(string)
        deletion_protection_configuration = optional(list(object({
          deletion_protection_status    = string
          deletion_protection_threshold = optional(number)
        })))
        media_extraction_configuration = optional(list(object({
          audio_extraction_configuration = optional(list(object({
            audio_extraction_status = string
          })))
          image_extraction_configuration = optional(list(object({
            image_extraction_status = string
          })))
          video_extraction_configuration = optional(list(object({
            video_extraction_status = string
          })))
        })))
      })))
      s3_configuration = optional(list(object({
        bucket_arn              = string
        bucket_owner_account_id = optional(string)
        inclusion_prefixes      = optional(set(string))
      })))
      salesforce_configuration = optional(list(object({
        crawler_configuration = optional(list(object({
          filter_configuration = optional(list(object({
            pattern_object_filter = optional(list(object({
              filters = optional(list(object({
                exclusion_filters = optional(set(string))
                inclusion_filters = optional(set(string))
                object_type       = string
              })))
            })))
            type = string
          })))
        })))
        source_configuration = optional(list(object({
          auth_type              = string
          credentials_secret_arn = string
          host_url               = string
        })))
      })))
      share_point_configuration = optional(list(object({
        crawler_configuration = optional(list(object({
          filter_configuration = optional(list(object({
            pattern_object_filter = optional(list(object({
              filters = optional(list(object({
                exclusion_filters = optional(set(string))
                inclusion_filters = optional(set(string))
                object_type       = string
              })))
            })))
            type = string
          })))
        })))
        source_configuration = optional(list(object({
          auth_type              = string
          credentials_secret_arn = string
          domain                 = string
          host_type              = string
          site_urls              = set(string)
          tenant_id              = optional(string)
        })))
      })))
      type = string
      web_configuration = optional(list(object({
        crawler_configuration = optional(list(object({
          crawler_limits = optional(list(object({
            max_pages  = optional(number)
            rate_limit = optional(number)
          })))
          exclusion_filters = optional(set(string))
          inclusion_filters = optional(set(string))
          scope             = optional(string)
          user_agent        = optional(string)
        })))
        source_configuration = optional(list(object({
          url_configuration = optional(list(object({
            seed_urls = optional(list(object({
              url = optional(string)
            })))
          })))
        })))
      })))
    })))
    server_side_encryption_configuration = optional(list(object({
      kms_key_arn = optional(string)
    })))
    vector_ingestion_configuration = optional(list(object({
      chunking_configuration = optional(list(object({
        chunking_strategy = string
        fixed_size_chunking_configuration = optional(list(object({
          max_tokens         = number
          overlap_percentage = number
        })))
        hierarchical_chunking_configuration = optional(list(object({
          level_configuration = optional(list(object({
            max_tokens = number
          })))
          overlap_tokens = number
        })))
        semantic_chunking_configuration = optional(list(object({
          breakpoint_percentile_threshold = number
          buffer_size                     = number
          max_token                       = number
        })))
      })))
      custom_transformation_configuration = optional(list(object({
        intermediate_storage = optional(list(object({
          s3_location = optional(list(object({
            uri = string
          })))
        })))
        transformation = optional(list(object({
          step_to_apply = string
          transformation_function = optional(list(object({
            transformation_lambda_configuration = optional(list(object({
              lambda_arn = string
            })))
          })))
        })))
      })))
      parsing_configuration = optional(list(object({
        bedrock_data_automation_configuration = optional(list(object({
          parsing_modality = optional(string)
        })))
        bedrock_foundation_model_configuration = optional(list(object({
          model_arn        = string
          parsing_modality = optional(string)
          parsing_prompt = optional(list(object({
            parsing_prompt_string = string
          })))
        })))
        parsing_strategy = string
      })))
    })))
  }))
}

