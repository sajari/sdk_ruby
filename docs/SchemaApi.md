# SajariAPIClient::SchemaApi

All URIs are relative to *https://api-gateway.sajari.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_create_schema_fields**](SchemaApi.md#batch_create_schema_fields) | **POST** /v4/collections/{collection_id}/schemaFields:batchCreate | Batch create schema fields
[**create_schema_field**](SchemaApi.md#create_schema_field) | **POST** /v4/collections/{collection_id}/schemaFields | Create schema field
[**list_schema_fields**](SchemaApi.md#list_schema_fields) | **GET** /v4/collections/{collection_id}/schemaFields | List schema fields



## batch_create_schema_fields

> BatchCreateSchemaFieldsResponse batch_create_schema_fields(collection_id, batch_create_schema_fields_request)

Batch create schema fields

The batch version of the [CreateSchemaField](/api#operation/CreateSchemaField) call.

### Example

```ruby
# load the gem
require 'sajari_client'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::SchemaApi.new
collection_id = 'collection_id_example' # String | The collection to create the schema fields in, e.g. `my-collection`.
batch_create_schema_fields_request = SajariAPIClient::BatchCreateSchemaFieldsRequest.new # BatchCreateSchemaFieldsRequest | 

begin
  #Batch create schema fields
  result = api_instance.batch_create_schema_fields(collection_id, batch_create_schema_fields_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling SchemaApi->batch_create_schema_fields: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to create the schema fields in, e.g. &#x60;my-collection&#x60;. | 
 **batch_create_schema_fields_request** | [**BatchCreateSchemaFieldsRequest**](BatchCreateSchemaFieldsRequest.md)|  | 

### Return type

[**BatchCreateSchemaFieldsResponse**](BatchCreateSchemaFieldsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_schema_field

> SchemaField create_schema_field(collection_id, schema_field)

Create schema field

Create a new field in your collection's schema.

### Example

```ruby
# load the gem
require 'sajari_client'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::SchemaApi.new
collection_id = 'collection_id_example' # String | The collection to create a schema field in, e.g. `my-collection`.
schema_field = SajariAPIClient::SchemaField.new # SchemaField | The schema field to create.

begin
  #Create schema field
  result = api_instance.create_schema_field(collection_id, schema_field)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling SchemaApi->create_schema_field: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to create a schema field in, e.g. &#x60;my-collection&#x60;. | 
 **schema_field** | [**SchemaField**](SchemaField.md)| The schema field to create. | 

### Return type

[**SchemaField**](SchemaField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_schema_fields

> ListSchemaFieldsResponse list_schema_fields(collection_id, opts)

List schema fields

Retrieve a list of schema fields in the collection.

### Example

```ruby
# load the gem
require 'sajari_client'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::SchemaApi.new
collection_id = 'collection_id_example' # String | The collection that owns this set of schema fields, e.g. `my-collection`.
opts = {
  page_size: 56, # Integer | The maximum number of schema fields to return. The service may return fewer than this value.  If unspecified, at most 50 schema fields are returned.  The maximum value is 1000; values above 1000 are coerced to 1000.
  page_token: 'page_token_example' # String | A page token, received from a previous [ListSchemaFields](/api#operation/ListSchemaFields) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListSchemaFields](/api#operation/ListSchemaFields) must match the call that provided the page token.
}

begin
  #List schema fields
  result = api_instance.list_schema_fields(collection_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling SchemaApi->list_schema_fields: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection that owns this set of schema fields, e.g. &#x60;my-collection&#x60;. | 
 **page_size** | **Integer**| The maximum number of schema fields to return. The service may return fewer than this value.  If unspecified, at most 50 schema fields are returned.  The maximum value is 1000; values above 1000 are coerced to 1000. | [optional] 
 **page_token** | **String**| A page token, received from a previous [ListSchemaFields](/api#operation/ListSchemaFields) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListSchemaFields](/api#operation/ListSchemaFields) must match the call that provided the page token. | [optional] 

### Return type

[**ListSchemaFieldsResponse**](ListSchemaFieldsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

