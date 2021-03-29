=begin
#Sajari API

#Sajari is a smart, highly-configurable, real-time search service that enables thousands of businesses worldwide to provide amazing search experiences on their websites, stores, and applications.

The version of the OpenAPI document: v4
Contact: support@sajari.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

# Common files
require 'sdk-ruby/api_client'
require 'sdk-ruby/api_error'
require 'sdk-ruby/version'
require 'sdk-ruby/configuration'

# Models
require 'sdk-ruby/models/batch_create_schema_fields_request'
require 'sdk-ruby/models/batch_create_schema_fields_response'
require 'sdk-ruby/models/batch_create_schema_fields_response_error'
require 'sdk-ruby/models/batch_upsert_records_request'
require 'sdk-ruby/models/batch_upsert_records_request_pipeline'
require 'sdk-ruby/models/batch_upsert_records_response'
require 'sdk-ruby/models/batch_upsert_records_response_error'
require 'sdk-ruby/models/batch_upsert_records_response_key'
require 'sdk-ruby/models/batch_upsert_records_response_variables'
require 'sdk-ruby/models/collection'
require 'sdk-ruby/models/delete_record_request'
require 'sdk-ruby/models/error'
require 'sdk-ruby/models/generate_pipelines_request'
require 'sdk-ruby/models/generate_pipelines_response'
require 'sdk-ruby/models/get_default_pipeline_response'
require 'sdk-ruby/models/get_default_version_request_view'
require 'sdk-ruby/models/get_pipeline_request_view'
require 'sdk-ruby/models/get_record_request'
require 'sdk-ruby/models/list_collections_response'
require 'sdk-ruby/models/list_pipelines_request_view'
require 'sdk-ruby/models/list_pipelines_response'
require 'sdk-ruby/models/list_schema_fields_response'
require 'sdk-ruby/models/percentile_data_point'
require 'sdk-ruby/models/pipeline'
require 'sdk-ruby/models/pipeline_step'
require 'sdk-ruby/models/pipeline_step_param_binding'
require 'sdk-ruby/models/pipeline_type'
require 'sdk-ruby/models/protobuf_any'
require 'sdk-ruby/models/protobuf_null_value'
require 'sdk-ruby/models/query_aggregate_result'
require 'sdk-ruby/models/query_aggregate_result_analysis'
require 'sdk-ruby/models/query_aggregate_result_buckets'
require 'sdk-ruby/models/query_aggregate_result_buckets_bucket'
require 'sdk-ruby/models/query_aggregate_result_count'
require 'sdk-ruby/models/query_aggregate_result_date'
require 'sdk-ruby/models/query_aggregate_result_metric'
require 'sdk-ruby/models/query_aggregate_result_percentile'
require 'sdk-ruby/models/query_collection_request'
require 'sdk-ruby/models/query_collection_request_pipeline'
require 'sdk-ruby/models/query_collection_request_tracking'
require 'sdk-ruby/models/query_collection_request_tracking_type'
require 'sdk-ruby/models/query_collection_response'
require 'sdk-ruby/models/query_collection_response_pipeline'
require 'sdk-ruby/models/query_result'
require 'sdk-ruby/models/query_result_token'
require 'sdk-ruby/models/query_result_token_click'
require 'sdk-ruby/models/query_result_token_pos_neg'
require 'sdk-ruby/models/record_key'
require 'sdk-ruby/models/schema_field'
require 'sdk-ruby/models/schema_field_mode'
require 'sdk-ruby/models/schema_field_type'
require 'sdk-ruby/models/set_default_pipeline_request'
require 'sdk-ruby/models/set_default_version_request'
require 'sdk-ruby/models/status'
require 'sdk-ruby/models/upsert_record_request'
require 'sdk-ruby/models/upsert_record_request_pipeline'
require 'sdk-ruby/models/upsert_record_response'

# APIs
require 'sdk-ruby/api/collections_api'
require 'sdk-ruby/api/pipelines_api'
require 'sdk-ruby/api/records_api'
require 'sdk-ruby/api/schema_api'

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
