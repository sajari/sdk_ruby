=begin
#Search.io API

#Search.io offers a search and discovery service with Neuralsearch®, the world's first instant AI search technology. Businesses of all sizes use Search.io to build site search and discovery solutions that maximize e-commerce revenue, optimize on-site customer experience, and scale their online presence.

The version of the OpenAPI document: v4
Contact: support@search.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

# Common files
require 'sdk_ruby/api_client'
require 'sdk_ruby/api_error'
require 'sdk_ruby/version'
require 'sdk_ruby/configuration'

# Models
require 'sdk_ruby/models/active_promotion'
require 'sdk_ruby/models/batch_create_schema_fields_request'
require 'sdk_ruby/models/batch_create_schema_fields_response'
require 'sdk_ruby/models/batch_create_schema_fields_response_error'
require 'sdk_ruby/models/batch_update_records_request'
require 'sdk_ruby/models/batch_update_records_response'
require 'sdk_ruby/models/batch_update_records_response_error'
require 'sdk_ruby/models/batch_update_records_response_record'
require 'sdk_ruby/models/batch_upsert_records_request'
require 'sdk_ruby/models/batch_upsert_records_request_pipeline'
require 'sdk_ruby/models/batch_upsert_records_response'
require 'sdk_ruby/models/batch_upsert_records_response_error'
require 'sdk_ruby/models/batch_upsert_records_response_key'
require 'sdk_ruby/models/batch_upsert_records_response_variables'
require 'sdk_ruby/models/collection'
require 'sdk_ruby/models/delete_record_request'
require 'sdk_ruby/models/error'
require 'sdk_ruby/models/generate_pipelines_request'
require 'sdk_ruby/models/generate_pipelines_response'
require 'sdk_ruby/models/get_default_pipeline_response'
require 'sdk_ruby/models/get_default_version_request_view'
require 'sdk_ruby/models/get_pipeline_request_view'
require 'sdk_ruby/models/get_record_request'
require 'sdk_ruby/models/list_collections_response'
require 'sdk_ruby/models/list_pipelines_request_view'
require 'sdk_ruby/models/list_pipelines_response'
require 'sdk_ruby/models/list_promotions_response'
require 'sdk_ruby/models/list_redirects_response'
require 'sdk_ruby/models/list_schema_fields_response'
require 'sdk_ruby/models/percentile_data_point'
require 'sdk_ruby/models/pipeline'
require 'sdk_ruby/models/pipeline_step'
require 'sdk_ruby/models/pipeline_step_param_binding'
require 'sdk_ruby/models/pipeline_type'
require 'sdk_ruby/models/promotion'
require 'sdk_ruby/models/promotion_category'
require 'sdk_ruby/models/promotion_exclusion'
require 'sdk_ruby/models/promotion_filter_boost'
require 'sdk_ruby/models/promotion_filter_condition'
require 'sdk_ruby/models/promotion_pin'
require 'sdk_ruby/models/promotion_range_boost'
require 'sdk_ruby/models/protobuf_any'
require 'sdk_ruby/models/protobuf_field_mask'
require 'sdk_ruby/models/protobuf_null_value'
require 'sdk_ruby/models/query_aggregate_result'
require 'sdk_ruby/models/query_aggregate_result_analysis'
require 'sdk_ruby/models/query_aggregate_result_buckets'
require 'sdk_ruby/models/query_aggregate_result_buckets_bucket'
require 'sdk_ruby/models/query_aggregate_result_count'
require 'sdk_ruby/models/query_aggregate_result_date'
require 'sdk_ruby/models/query_aggregate_result_metric'
require 'sdk_ruby/models/query_aggregate_result_percentile'
require 'sdk_ruby/models/query_collection_request'
require 'sdk_ruby/models/query_collection_request_pipeline'
require 'sdk_ruby/models/query_collection_request_tracking'
require 'sdk_ruby/models/query_collection_request_tracking_type'
require 'sdk_ruby/models/query_collection_response'
require 'sdk_ruby/models/query_collection_response_pipeline'
require 'sdk_ruby/models/query_result'
require 'sdk_ruby/models/query_result_token'
require 'sdk_ruby/models/query_result_token_click'
require 'sdk_ruby/models/query_result_token_pos_neg'
require 'sdk_ruby/models/record_key'
require 'sdk_ruby/models/redirect'
require 'sdk_ruby/models/redirect_result'
require 'sdk_ruby/models/schema_field'
require 'sdk_ruby/models/schema_field_mode'
require 'sdk_ruby/models/schema_field_type'
require 'sdk_ruby/models/send_event_request'
require 'sdk_ruby/models/set_default_pipeline_request'
require 'sdk_ruby/models/set_default_version_request'
require 'sdk_ruby/models/status'
require 'sdk_ruby/models/update_record_request'
require 'sdk_ruby/models/upsert_record_request'
require 'sdk_ruby/models/upsert_record_request_pipeline'
require 'sdk_ruby/models/upsert_record_response'

# APIs
require 'sdk_ruby/api/collections_api'
require 'sdk_ruby/api/events_api'
require 'sdk_ruby/api/pipelines_api'
require 'sdk_ruby/api/promotions_api'
require 'sdk_ruby/api/records_api'
require 'sdk_ruby/api/redirects_api'
require 'sdk_ruby/api/schema_api'

module SajariAPIClient
  class << self
    # Customize default settings for the SDK using block.
    #   SajariAPIClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
