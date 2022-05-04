# SajariAPIClient::SchemaApi

All URIs are relative to *https://api.search.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_create_schema_fields**](SchemaApi.md#batch_create_schema_fields) | **POST** /v4/collections/{collection_id}/schemaFields:batchCreate | Batch create schema fields |
| [**create_schema_field**](SchemaApi.md#create_schema_field) | **POST** /v4/collections/{collection_id}/schemaFields | Create schema field |
| [**delete_schema_field**](SchemaApi.md#delete_schema_field) | **DELETE** /v4/collections/{collection_id}/schemaFields/{schema_field_name} | Delete schema field |
| [**list_schema_fields**](SchemaApi.md#list_schema_fields) | **GET** /v4/collections/{collection_id}/schemaFields | List schema fields |
| [**update_schema_field**](SchemaApi.md#update_schema_field) | **PATCH** /v4/collections/{collection_id}/schemaFields/{schema_field_name} | Update schema field |


## batch_create_schema_fields

> <BatchCreateSchemaFieldsResponse> batch_create_schema_fields(collection_id, batch_create_schema_fields_request)

Batch create schema fields

The batch version of the [CreateSchemaField](/docs/api#operation/CreateSchemaField) call.

### Examples

```ruby
require 'time'
require 'sdk_ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::SchemaApi.new
collection_id = 'collection_id_example' # String | The collection to create the schema fields in, e.g. `my-collection`.
batch_create_schema_fields_request = SajariAPIClient::BatchCreateSchemaFieldsRequest.new({fields: [SajariAPIClient::SchemaField.new({mode: SajariAPIClient::SchemaFieldMode::MODE_UNSPECIFIED, name: 'name_example', type: SajariAPIClient::SchemaFieldType::TYPE_UNSPECIFIED})]}) # BatchCreateSchemaFieldsRequest | 

begin
  # Batch create schema fields
  result = api_instance.batch_create_schema_fields(collection_id, batch_create_schema_fields_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->batch_create_schema_fields: #{e}"
end
```

#### Using the batch_create_schema_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchCreateSchemaFieldsResponse>, Integer, Hash)> batch_create_schema_fields_with_http_info(collection_id, batch_create_schema_fields_request)

```ruby
begin
  # Batch create schema fields
  data, status_code, headers = api_instance.batch_create_schema_fields_with_http_info(collection_id, batch_create_schema_fields_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchCreateSchemaFieldsResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->batch_create_schema_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to create the schema fields in, e.g. &#x60;my-collection&#x60;. |  |
| **batch_create_schema_fields_request** | [**BatchCreateSchemaFieldsRequest**](BatchCreateSchemaFieldsRequest.md) |  |  |

### Return type

[**BatchCreateSchemaFieldsResponse**](BatchCreateSchemaFieldsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_schema_field

> <SchemaField> create_schema_field(collection_id, schema_field)

Create schema field

Create a new field in a collection's schema.

### Examples

```ruby
require 'time'
require 'sdk_ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::SchemaApi.new
collection_id = 'collection_id_example' # String | The collection to create a schema field in, e.g. `my-collection`.
schema_field = SajariAPIClient::SchemaField.new({mode: SajariAPIClient::SchemaFieldMode::MODE_UNSPECIFIED, name: 'name_example', type: SajariAPIClient::SchemaFieldType::TYPE_UNSPECIFIED}) # SchemaField | The schema field to create.

begin
  # Create schema field
  result = api_instance.create_schema_field(collection_id, schema_field)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->create_schema_field: #{e}"
end
```

#### Using the create_schema_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemaField>, Integer, Hash)> create_schema_field_with_http_info(collection_id, schema_field)

```ruby
begin
  # Create schema field
  data, status_code, headers = api_instance.create_schema_field_with_http_info(collection_id, schema_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemaField>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->create_schema_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to create a schema field in, e.g. &#x60;my-collection&#x60;. |  |
| **schema_field** | [**SchemaField**](SchemaField.md) | The schema field to create. |  |

### Return type

[**SchemaField**](SchemaField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_schema_field

> Object delete_schema_field(collection_id, schema_field_name)

Delete schema field

Deleting a schema field removes it from all records within the collection, however, references to the schema field in pipelines are not removed.  > Note: This operation cannot be reversed.

### Examples

```ruby
require 'time'
require 'sdk_ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::SchemaApi.new
collection_id = 'collection_id_example' # String | The collection the schema field belongs to, e.g. `my-collection`.
schema_field_name = 'schema_field_name_example' # String | The name of the schema field to delete.

begin
  # Delete schema field
  result = api_instance.delete_schema_field(collection_id, schema_field_name)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->delete_schema_field: #{e}"
end
```

#### Using the delete_schema_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_schema_field_with_http_info(collection_id, schema_field_name)

```ruby
begin
  # Delete schema field
  data, status_code, headers = api_instance.delete_schema_field_with_http_info(collection_id, schema_field_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->delete_schema_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection the schema field belongs to, e.g. &#x60;my-collection&#x60;. |  |
| **schema_field_name** | **String** | The name of the schema field to delete. |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schema_fields

> <ListSchemaFieldsResponse> list_schema_fields(collection_id, opts)

List schema fields

Retrieve a list of schema fields in a collection.

### Examples

```ruby
require 'time'
require 'sdk_ruby'
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
  page_token: 'page_token_example' # String | A page token, received from a previous [ListSchemaFields](/docs/api#operation/ListSchemaFields) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListSchemaFields](/docs/api#operation/ListSchemaFields) must match the call that provided the page token.
}

begin
  # List schema fields
  result = api_instance.list_schema_fields(collection_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->list_schema_fields: #{e}"
end
```

#### Using the list_schema_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSchemaFieldsResponse>, Integer, Hash)> list_schema_fields_with_http_info(collection_id, opts)

```ruby
begin
  # List schema fields
  data, status_code, headers = api_instance.list_schema_fields_with_http_info(collection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSchemaFieldsResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->list_schema_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns this set of schema fields, e.g. &#x60;my-collection&#x60;. |  |
| **page_size** | **Integer** | The maximum number of schema fields to return. The service may return fewer than this value.  If unspecified, at most 50 schema fields are returned.  The maximum value is 1000; values above 1000 are coerced to 1000. | [optional] |
| **page_token** | **String** | A page token, received from a previous [ListSchemaFields](/docs/api#operation/ListSchemaFields) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListSchemaFields](/docs/api#operation/ListSchemaFields) must match the call that provided the page token. | [optional] |

### Return type

[**ListSchemaFieldsResponse**](ListSchemaFieldsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_schema_field

> <SchemaField> update_schema_field(collection_id, schema_field_name, schema_field, opts)

Update schema field

Update the details of a schema field.  Only `name` and `description` can be updated.

### Examples

```ruby
require 'time'
require 'sdk_ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::SchemaApi.new
collection_id = 'collection_id_example' # String | The collection the schema field belongs to, e.g. `my-collection`.
schema_field_name = 'schema_field_name_example' # String | The name of the schema field to update.
schema_field = SajariAPIClient::SchemaField.new({mode: SajariAPIClient::SchemaFieldMode::MODE_UNSPECIFIED, name: 'name_example', type: SajariAPIClient::SchemaFieldType::TYPE_UNSPECIFIED}) # SchemaField | The schema field details to update.
opts = {
  update_mask: 'update_mask_example' # String | The list of fields to update, separated by a comma, e.g. `name,description`.  Each field should be in snake case.  For each field that you want to update, provide a corresponding value in the schema field object containing the new value.
}

begin
  # Update schema field
  result = api_instance.update_schema_field(collection_id, schema_field_name, schema_field, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->update_schema_field: #{e}"
end
```

#### Using the update_schema_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchemaField>, Integer, Hash)> update_schema_field_with_http_info(collection_id, schema_field_name, schema_field, opts)

```ruby
begin
  # Update schema field
  data, status_code, headers = api_instance.update_schema_field_with_http_info(collection_id, schema_field_name, schema_field, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchemaField>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling SchemaApi->update_schema_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection the schema field belongs to, e.g. &#x60;my-collection&#x60;. |  |
| **schema_field_name** | **String** | The name of the schema field to update. |  |
| **schema_field** | [**SchemaField**](SchemaField.md) | The schema field details to update. |  |
| **update_mask** | **String** | The list of fields to update, separated by a comma, e.g. &#x60;name,description&#x60;.  Each field should be in snake case.  For each field that you want to update, provide a corresponding value in the schema field object containing the new value. | [optional] |

### Return type

[**SchemaField**](SchemaField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

