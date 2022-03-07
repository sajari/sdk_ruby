# SajariAPIClient::RecordsApi

All URIs are relative to *https://api.search.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_update_records**](RecordsApi.md#batch_update_records) | **POST** /v4/collections/{collection_id}/records:batchUpdate | Batch update records |
| [**batch_upsert_records**](RecordsApi.md#batch_upsert_records) | **POST** /v4/collections/{collection_id}/records:batchUpsert | Batch upsert records |
| [**delete_record**](RecordsApi.md#delete_record) | **POST** /v4/collections/{collection_id}/records:delete | Delete record |
| [**get_record**](RecordsApi.md#get_record) | **POST** /v4/collections/{collection_id}/records:get | Get record |
| [**update_record**](RecordsApi.md#update_record) | **POST** /v4/collections/{collection_id}/records:update | Update record |
| [**upsert_record**](RecordsApi.md#upsert_record) | **POST** /v4/collections/{collection_id}/records:upsert | Upsert record |


## batch_update_records

> <BatchUpdateRecordsResponse> batch_update_records(collection_id, batch_update_records_request)

Batch update records

The batch version of the [UpdateRecord](/api#operation/UpdateRecord) call.

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

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection that contains the records to update, e.g. `my-collection`.
batch_update_records_request = SajariAPIClient::BatchUpdateRecordsRequest.new({requests: [SajariAPIClient::UpdateRecordRequest.new({key: SajariAPIClient::RecordKey.new({field: 'field_example', value: 'value_example'}), record: { key: 3.56}, update_mask: 'update_mask_example'})]}) # BatchUpdateRecordsRequest | 

begin
  # Batch update records
  result = api_instance.batch_update_records(collection_id, batch_update_records_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->batch_update_records: #{e}"
end
```

#### Using the batch_update_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpdateRecordsResponse>, Integer, Hash)> batch_update_records_with_http_info(collection_id, batch_update_records_request)

```ruby
begin
  # Batch update records
  data, status_code, headers = api_instance.batch_update_records_with_http_info(collection_id, batch_update_records_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpdateRecordsResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->batch_update_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that contains the records to update, e.g. &#x60;my-collection&#x60;. |  |
| **batch_update_records_request** | [**BatchUpdateRecordsRequest**](BatchUpdateRecordsRequest.md) |  |  |

### Return type

[**BatchUpdateRecordsResponse**](BatchUpdateRecordsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## batch_upsert_records

> <BatchUpsertRecordsResponse> batch_upsert_records(collection_id, batch_upsert_records_request)

Batch upsert records

The batch version of the [UpsertRecord](/api#operation/UpsertRecord) call.

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

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection to upsert the records in, e.g. `my-collection`.
batch_upsert_records_request = SajariAPIClient::BatchUpsertRecordsRequest.new({records: [3.56]}) # BatchUpsertRecordsRequest | 

begin
  # Batch upsert records
  result = api_instance.batch_upsert_records(collection_id, batch_upsert_records_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->batch_upsert_records: #{e}"
end
```

#### Using the batch_upsert_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchUpsertRecordsResponse>, Integer, Hash)> batch_upsert_records_with_http_info(collection_id, batch_upsert_records_request)

```ruby
begin
  # Batch upsert records
  data, status_code, headers = api_instance.batch_upsert_records_with_http_info(collection_id, batch_upsert_records_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchUpsertRecordsResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->batch_upsert_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to upsert the records in, e.g. &#x60;my-collection&#x60;. |  |
| **batch_upsert_records_request** | [**BatchUpsertRecordsRequest**](BatchUpsertRecordsRequest.md) |  |  |

### Return type

[**BatchUpsertRecordsResponse**](BatchUpsertRecordsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_record

> Object delete_record(collection_id, delete_record_request)

Delete record

Delete a record with the given key.

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

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection that contains the record to delete, e.g. `my-collection`.
delete_record_request = SajariAPIClient::DeleteRecordRequest.new({key: SajariAPIClient::RecordKey.new({field: 'field_example', value: 'value_example'})}) # DeleteRecordRequest | 

begin
  # Delete record
  result = api_instance.delete_record(collection_id, delete_record_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->delete_record: #{e}"
end
```

#### Using the delete_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_record_with_http_info(collection_id, delete_record_request)

```ruby
begin
  # Delete record
  data, status_code, headers = api_instance.delete_record_with_http_info(collection_id, delete_record_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->delete_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that contains the record to delete, e.g. &#x60;my-collection&#x60;. |  |
| **delete_record_request** | [**DeleteRecordRequest**](DeleteRecordRequest.md) |  |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_record

> Object get_record(collection_id, get_record_request)

Get record

Retrieve a record with the given key.

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

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection that contains the record to retrieve, e.g. `my-collection`.
get_record_request = SajariAPIClient::GetRecordRequest.new({key: SajariAPIClient::RecordKey.new({field: 'field_example', value: 'value_example'})}) # GetRecordRequest | 

begin
  # Get record
  result = api_instance.get_record(collection_id, get_record_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->get_record: #{e}"
end
```

#### Using the get_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_record_with_http_info(collection_id, get_record_request)

```ruby
begin
  # Get record
  data, status_code, headers = api_instance.get_record_with_http_info(collection_id, get_record_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->get_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that contains the record to retrieve, e.g. &#x60;my-collection&#x60;. |  |
| **get_record_request** | [**GetRecordRequest**](GetRecordRequest.md) |  |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_record

> Object update_record(collection_id, update_record_request)

Update record

Add or update specific fields within a record with the given values. The updated record is returned in the response.  To replace all fields in a record, you should use the [UpsertRecord](/api#operation/UpsertRecord) call.  Note that the update record call cannot be used to add or update indexed or unique fields. For this case use the [UpsertRecord](/api#operation/UpsertRecord) call.

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

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection that contains the record to update, e.g. `my-collection`.
update_record_request = SajariAPIClient::UpdateRecordRequest.new({key: SajariAPIClient::RecordKey.new({field: 'field_example', value: 'value_example'}), record: { key: 3.56}, update_mask: 'update_mask_example'}) # UpdateRecordRequest | 

begin
  # Update record
  result = api_instance.update_record(collection_id, update_record_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->update_record: #{e}"
end
```

#### Using the update_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_record_with_http_info(collection_id, update_record_request)

```ruby
begin
  # Update record
  data, status_code, headers = api_instance.update_record_with_http_info(collection_id, update_record_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->update_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that contains the record to update, e.g. &#x60;my-collection&#x60;. |  |
| **update_record_request** | [**UpdateRecordRequest**](UpdateRecordRequest.md) |  |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_record

> <UpsertRecordResponse> upsert_record(collection_id, upsert_record_request)

Upsert record

If the record does not exist in the collection it is inserted. If it does exist it is updated.  If no pipeline is specified, the default record pipeline is used to process the record.  If the record is inserted, the response contains the key of the inserted record. You can use this if you need to retrieve or delete the record. If the record is updated, the response does not contain a key. Callers can use this as a signal to determine if the record is inserted/created or updated.  For example, to add a single product from your ecommerce store to a collection, use the following call:  ```json {   \"pipeline\": {     \"name\": \"my-pipeline\",     \"version\": \"1\"   },   \"record\": {     \"id\": \"54hdc7h2334h\",     \"name\": \"Smart TV\",     \"price\": 1999,     \"brand\": \"Acme\",     \"description\": \"...\",     \"in_stock\": true   } } ```

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

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection to upsert the record in, e.g. `my-collection`.
upsert_record_request = SajariAPIClient::UpsertRecordRequest.new({record: 3.56}) # UpsertRecordRequest | 

begin
  # Upsert record
  result = api_instance.upsert_record(collection_id, upsert_record_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->upsert_record: #{e}"
end
```

#### Using the upsert_record_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpsertRecordResponse>, Integer, Hash)> upsert_record_with_http_info(collection_id, upsert_record_request)

```ruby
begin
  # Upsert record
  data, status_code, headers = api_instance.upsert_record_with_http_info(collection_id, upsert_record_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpsertRecordResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RecordsApi->upsert_record_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to upsert the record in, e.g. &#x60;my-collection&#x60;. |  |
| **upsert_record_request** | [**UpsertRecordRequest**](UpsertRecordRequest.md) |  |  |

### Return type

[**UpsertRecordResponse**](UpsertRecordResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

