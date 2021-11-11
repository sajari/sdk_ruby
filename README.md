# sdk_ruby

SajariAPIClient - the Ruby gem for the Sajari API

Sajari is a smart, highly-configurable, real-time search service that enables thousands of businesses worldwide to provide amazing search experiences on their websites, stores, and applications.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v4
- Package version: 4.2.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.sajari.com/company/contact](https://www.sajari.com/company/contact)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build sdk_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./sdk_ruby-4.2.0.gem
```

(for development, run `gem install --dev ./sdk_ruby-4.2.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'sdk_ruby', '~> 4.2.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/sajari/GIT_USER_ID/sdk-ruby, then add the following in the Gemfile:

    gem 'sdk_ruby', :git => 'https://github.com/sajari/GIT_USER_ID/sdk-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'sdk_ruby'

# Setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'
end

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The ID to use for the collection.  This must start with an alphanumeric character followed by one or more alphanumeric or `-` characters. Strictly speaking, it must match the regular expression: `^[A-Za-z][A-Za-z0-9\\-]*$`.
collection = SajariAPIClient::Collection.new({display_name: 'display_name_example'}) # Collection | Details of the collection to create.

begin
  #Create collection
  result = api_instance.create_collection(collection_id, collection)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling CollectionsApi->create_collection: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api-gateway.sajari.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SajariAPIClient::CollectionsApi* | [**create_collection**](docs/CollectionsApi.md#create_collection) | **POST** /v4/collections | Create collection
*SajariAPIClient::CollectionsApi* | [**delete_collection**](docs/CollectionsApi.md#delete_collection) | **DELETE** /v4/collections/{collection_id} | Delete collection
*SajariAPIClient::CollectionsApi* | [**get_collection**](docs/CollectionsApi.md#get_collection) | **GET** /v4/collections/{collection_id} | Get collection
*SajariAPIClient::CollectionsApi* | [**list_collections**](docs/CollectionsApi.md#list_collections) | **GET** /v4/collections | List collections
*SajariAPIClient::CollectionsApi* | [**query_collection**](docs/CollectionsApi.md#query_collection) | **POST** /v4/collections/{collection_id}:query | Query collection
*SajariAPIClient::CollectionsApi* | [**query_collection2**](docs/CollectionsApi.md#query_collection2) | **POST** /v4/collections/{collection_id}:queryCollection | Query collection
*SajariAPIClient::CollectionsApi* | [**update_collection**](docs/CollectionsApi.md#update_collection) | **PATCH** /v4/collections/{collection_id} | Update collection
*SajariAPIClient::EventsApi* | [**send_event**](docs/EventsApi.md#send_event) | **POST** /v4/events:send | Send event
*SajariAPIClient::EventsApi* | [**send_event2**](docs/EventsApi.md#send_event2) | **POST** /v4/events:sendEvent | Send event
*SajariAPIClient::PipelinesApi* | [**create_pipeline**](docs/PipelinesApi.md#create_pipeline) | **POST** /v4/collections/{collection_id}/pipelines | Create pipeline
*SajariAPIClient::PipelinesApi* | [**generate_pipelines**](docs/PipelinesApi.md#generate_pipelines) | **POST** /v4/collections/{collection_id}:generatePipelines | Generate pipelines
*SajariAPIClient::PipelinesApi* | [**get_default_pipeline**](docs/PipelinesApi.md#get_default_pipeline) | **GET** /v4/collections/{collection_id}:getDefaultPipeline | Get default pipeline
*SajariAPIClient::PipelinesApi* | [**get_default_version**](docs/PipelinesApi.md#get_default_version) | **GET** /v4/collections/{collection_id}/pipelines/{type}/{name}:getDefaultVersion | Get default pipeline version
*SajariAPIClient::PipelinesApi* | [**get_pipeline**](docs/PipelinesApi.md#get_pipeline) | **GET** /v4/collections/{collection_id}/pipelines/{type}/{name}/{version} | Get pipeline
*SajariAPIClient::PipelinesApi* | [**list_pipelines**](docs/PipelinesApi.md#list_pipelines) | **GET** /v4/collections/{collection_id}/pipelines | List pipelines
*SajariAPIClient::PipelinesApi* | [**set_default_pipeline**](docs/PipelinesApi.md#set_default_pipeline) | **POST** /v4/collections/{collection_id}:setDefaultPipeline | Set default pipeline
*SajariAPIClient::PipelinesApi* | [**set_default_version**](docs/PipelinesApi.md#set_default_version) | **POST** /v4/collections/{collection_id}/pipelines/{type}/{name}:setDefaultVersion | Set default pipeline version
*SajariAPIClient::RecordsApi* | [**batch_upsert_records**](docs/RecordsApi.md#batch_upsert_records) | **POST** /v4/collections/{collection_id}/records:batchUpsert | Batch upsert records
*SajariAPIClient::RecordsApi* | [**delete_record**](docs/RecordsApi.md#delete_record) | **POST** /v4/collections/{collection_id}/records:delete | Delete record
*SajariAPIClient::RecordsApi* | [**get_record**](docs/RecordsApi.md#get_record) | **POST** /v4/collections/{collection_id}/records:get | Get record
*SajariAPIClient::RecordsApi* | [**update_record**](docs/RecordsApi.md#update_record) | **POST** /v4/collections/{collection_id}/records:update | Update record
*SajariAPIClient::RecordsApi* | [**upsert_record**](docs/RecordsApi.md#upsert_record) | **POST** /v4/collections/{collection_id}/records:upsert | Upsert record
*SajariAPIClient::SchemaApi* | [**batch_create_schema_fields**](docs/SchemaApi.md#batch_create_schema_fields) | **POST** /v4/collections/{collection_id}/schemaFields:batchCreate | Batch create schema fields
*SajariAPIClient::SchemaApi* | [**create_schema_field**](docs/SchemaApi.md#create_schema_field) | **POST** /v4/collections/{collection_id}/schemaFields | Create schema field
*SajariAPIClient::SchemaApi* | [**list_schema_fields**](docs/SchemaApi.md#list_schema_fields) | **GET** /v4/collections/{collection_id}/schemaFields | List schema fields


## Documentation for Models

 - [SajariAPIClient::BatchCreateSchemaFieldsRequest](docs/BatchCreateSchemaFieldsRequest.md)
 - [SajariAPIClient::BatchCreateSchemaFieldsResponse](docs/BatchCreateSchemaFieldsResponse.md)
 - [SajariAPIClient::BatchCreateSchemaFieldsResponseError](docs/BatchCreateSchemaFieldsResponseError.md)
 - [SajariAPIClient::BatchUpsertRecordsRequest](docs/BatchUpsertRecordsRequest.md)
 - [SajariAPIClient::BatchUpsertRecordsRequestPipeline](docs/BatchUpsertRecordsRequestPipeline.md)
 - [SajariAPIClient::BatchUpsertRecordsResponse](docs/BatchUpsertRecordsResponse.md)
 - [SajariAPIClient::BatchUpsertRecordsResponseError](docs/BatchUpsertRecordsResponseError.md)
 - [SajariAPIClient::BatchUpsertRecordsResponseKey](docs/BatchUpsertRecordsResponseKey.md)
 - [SajariAPIClient::BatchUpsertRecordsResponseVariables](docs/BatchUpsertRecordsResponseVariables.md)
 - [SajariAPIClient::Collection](docs/Collection.md)
 - [SajariAPIClient::DeleteRecordRequest](docs/DeleteRecordRequest.md)
 - [SajariAPIClient::Error](docs/Error.md)
 - [SajariAPIClient::GeneratePipelinesRequest](docs/GeneratePipelinesRequest.md)
 - [SajariAPIClient::GeneratePipelinesResponse](docs/GeneratePipelinesResponse.md)
 - [SajariAPIClient::GetDefaultPipelineResponse](docs/GetDefaultPipelineResponse.md)
 - [SajariAPIClient::GetDefaultVersionRequestView](docs/GetDefaultVersionRequestView.md)
 - [SajariAPIClient::GetPipelineRequestView](docs/GetPipelineRequestView.md)
 - [SajariAPIClient::GetRecordRequest](docs/GetRecordRequest.md)
 - [SajariAPIClient::ListCollectionsResponse](docs/ListCollectionsResponse.md)
 - [SajariAPIClient::ListPipelinesRequestView](docs/ListPipelinesRequestView.md)
 - [SajariAPIClient::ListPipelinesResponse](docs/ListPipelinesResponse.md)
 - [SajariAPIClient::ListSchemaFieldsResponse](docs/ListSchemaFieldsResponse.md)
 - [SajariAPIClient::PercentileDataPoint](docs/PercentileDataPoint.md)
 - [SajariAPIClient::Pipeline](docs/Pipeline.md)
 - [SajariAPIClient::PipelineStep](docs/PipelineStep.md)
 - [SajariAPIClient::PipelineStepParamBinding](docs/PipelineStepParamBinding.md)
 - [SajariAPIClient::PipelineType](docs/PipelineType.md)
 - [SajariAPIClient::PromotionFilterCondition](docs/PromotionFilterCondition.md)
 - [SajariAPIClient::ProtobufAny](docs/ProtobufAny.md)
 - [SajariAPIClient::ProtobufNullValue](docs/ProtobufNullValue.md)
 - [SajariAPIClient::QueryAggregateResult](docs/QueryAggregateResult.md)
 - [SajariAPIClient::QueryAggregateResultAnalysis](docs/QueryAggregateResultAnalysis.md)
 - [SajariAPIClient::QueryAggregateResultBuckets](docs/QueryAggregateResultBuckets.md)
 - [SajariAPIClient::QueryAggregateResultBucketsBucket](docs/QueryAggregateResultBucketsBucket.md)
 - [SajariAPIClient::QueryAggregateResultCount](docs/QueryAggregateResultCount.md)
 - [SajariAPIClient::QueryAggregateResultDate](docs/QueryAggregateResultDate.md)
 - [SajariAPIClient::QueryAggregateResultMetric](docs/QueryAggregateResultMetric.md)
 - [SajariAPIClient::QueryAggregateResultPercentile](docs/QueryAggregateResultPercentile.md)
 - [SajariAPIClient::QueryCollectionRequest](docs/QueryCollectionRequest.md)
 - [SajariAPIClient::QueryCollectionRequestPipeline](docs/QueryCollectionRequestPipeline.md)
 - [SajariAPIClient::QueryCollectionRequestTracking](docs/QueryCollectionRequestTracking.md)
 - [SajariAPIClient::QueryCollectionRequestTrackingType](docs/QueryCollectionRequestTrackingType.md)
 - [SajariAPIClient::QueryCollectionResponse](docs/QueryCollectionResponse.md)
 - [SajariAPIClient::QueryCollectionResponsePipeline](docs/QueryCollectionResponsePipeline.md)
 - [SajariAPIClient::QueryResult](docs/QueryResult.md)
 - [SajariAPIClient::QueryResultToken](docs/QueryResultToken.md)
 - [SajariAPIClient::QueryResultTokenClick](docs/QueryResultTokenClick.md)
 - [SajariAPIClient::QueryResultTokenPosNeg](docs/QueryResultTokenPosNeg.md)
 - [SajariAPIClient::RecordKey](docs/RecordKey.md)
 - [SajariAPIClient::SchemaField](docs/SchemaField.md)
 - [SajariAPIClient::SchemaFieldMode](docs/SchemaFieldMode.md)
 - [SajariAPIClient::SchemaFieldType](docs/SchemaFieldType.md)
 - [SajariAPIClient::SendEventRequest](docs/SendEventRequest.md)
 - [SajariAPIClient::SetDefaultPipelineRequest](docs/SetDefaultPipelineRequest.md)
 - [SajariAPIClient::SetDefaultVersionRequest](docs/SetDefaultVersionRequest.md)
 - [SajariAPIClient::Status](docs/Status.md)
 - [SajariAPIClient::UpdateRecordRequest](docs/UpdateRecordRequest.md)
 - [SajariAPIClient::UpsertRecordRequest](docs/UpsertRecordRequest.md)
 - [SajariAPIClient::UpsertRecordRequestPipeline](docs/UpsertRecordRequestPipeline.md)
 - [SajariAPIClient::UpsertRecordResponse](docs/UpsertRecordResponse.md)


## Documentation for Authorization


### BasicAuth

- **Type**: HTTP basic authentication

