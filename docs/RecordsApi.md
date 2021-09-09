# SajariAPIClient::RecordsApi

All URIs are relative to *https://api-gateway.sajari.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_upsert_records**](RecordsApi.md#batch_upsert_records) | **POST** /v4/collections/{collection_id}/records:batchUpsert | Batch upsert records
[**delete_record**](RecordsApi.md#delete_record) | **POST** /v4/collections/{collection_id}/records:delete | Delete record
[**get_record**](RecordsApi.md#get_record) | **POST** /v4/collections/{collection_id}/records:get | Get record
[**upsert_record**](RecordsApi.md#upsert_record) | **POST** /v4/collections/{collection_id}/records:upsert | Upsert record



## batch_upsert_records

> BatchUpsertRecordsResponse batch_upsert_records(collection_id, batch_upsert_records_request)

Batch upsert records

The batch version of the [UpsertRecord](/api#operation/UpsertRecord) call.

### Example

```ruby
# load the gem
require 'sdk-ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection to upsert the records in, e.g. `my-collection`.
batch_upsert_records_request = SajariAPIClient::BatchUpsertRecordsRequest.new # BatchUpsertRecordsRequest | 

begin
  #Batch upsert records
  result = api_instance.batch_upsert_records(collection_id, batch_upsert_records_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling RecordsApi->batch_upsert_records: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to upsert the records in, e.g. &#x60;my-collection&#x60;. | 
 **batch_upsert_records_request** | [**BatchUpsertRecordsRequest**](BatchUpsertRecordsRequest.md)|  | 

### Return type

[**BatchUpsertRecordsResponse**](BatchUpsertRecordsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_record

> AnyType delete_record(collection_id, delete_record_request)

Delete record

Delete a record with the given key.

### Example

```ruby
# load the gem
require 'sdk-ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection that contains the record to delete, e.g. `my-collection`.
delete_record_request = SajariAPIClient::DeleteRecordRequest.new # DeleteRecordRequest | 

begin
  #Delete record
  result = api_instance.delete_record(collection_id, delete_record_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling RecordsApi->delete_record: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection that contains the record to delete, e.g. &#x60;my-collection&#x60;. | 
 **delete_record_request** | [**DeleteRecordRequest**](DeleteRecordRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_record

> Object get_record(collection_id, get_record_request)

Get record

Retrieve a record with the given key.

### Example

```ruby
# load the gem
require 'sdk-ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection that contains the record to retrieve, e.g. `my-collection`.
get_record_request = SajariAPIClient::GetRecordRequest.new # GetRecordRequest | 

begin
  #Get record
  result = api_instance.get_record(collection_id, get_record_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling RecordsApi->get_record: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection that contains the record to retrieve, e.g. &#x60;my-collection&#x60;. | 
 **get_record_request** | [**GetRecordRequest**](GetRecordRequest.md)|  | 

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_record

> UpsertRecordResponse upsert_record(collection_id, upsert_record_request)

Upsert record

If the record does not exist in your collection it is inserted. If it does exist it is updated.  If no pipeline is specified, the default record pipeline is used to process the record.  If the record is inserted, the response contains the key of the inserted record. You can use this if you need to retrieve or delete the record. If the record is updated, the response does not contain a key. Callers can use this as a signal to determine if the record is inserted/created or updated.  For example, to add a single product from your ecommerce store to a collection, use the following call:  ```json {   \"pipeline\": {     \"name\": \"my-pipeline\",     \"version\": \"1\"   },   \"record\": {     \"id\": \"54hdc7h2334h\",     \"name\": \"Smart TV\",     \"price\": 1999,     \"brand\": \"Acme\",     \"description\": \"...\",     \"in_stock\": true   } } ```

### Example

```ruby
# load the gem
require 'sdk-ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::RecordsApi.new
collection_id = 'collection_id_example' # String | The collection to upsert the record in, e.g. `my-collection`.
upsert_record_request = SajariAPIClient::UpsertRecordRequest.new # UpsertRecordRequest | 

begin
  #Upsert record
  result = api_instance.upsert_record(collection_id, upsert_record_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling RecordsApi->upsert_record: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to upsert the record in, e.g. &#x60;my-collection&#x60;. | 
 **upsert_record_request** | [**UpsertRecordRequest**](UpsertRecordRequest.md)|  | 

### Return type

[**UpsertRecordResponse**](UpsertRecordResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

