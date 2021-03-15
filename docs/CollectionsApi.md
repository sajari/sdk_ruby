# SajariAPIClient::CollectionsApi

All URIs are relative to *https://api-gateway.sajari.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_collection**](CollectionsApi.md#create_collection) | **POST** /v4/collections | Create collection
[**delete_collection**](CollectionsApi.md#delete_collection) | **DELETE** /v4/collections/{collection_id} | Delete collection
[**get_collection**](CollectionsApi.md#get_collection) | **GET** /v4/collections/{collection_id} | Get collection
[**list_collections**](CollectionsApi.md#list_collections) | **GET** /v4/collections | List collections
[**query_collection**](CollectionsApi.md#query_collection) | **POST** /v4/collections/{collection_id}:queryCollection | Query collection
[**update_collection**](CollectionsApi.md#update_collection) | **PATCH** /v4/collections/{collection_id} | Update collection



## create_collection

> Collection create_collection(collection_id, collection)

Create collection

Create an empty collection.  Before records can be added to a collection, the schema and pipelines for the collection have to be set up. Consider setting up new collections via the Sajari Console, which handles the creation of the schema and pipelines for you.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The ID to use for the collection.  This must start with an alphanumeric character followed by one or more alphanumeric or `-` characters. Strictly speaking, it must match the regular expression: `^[A-Za-z][A-Za-z0-9\\-]*$`.
collection = SajariAPIClient::Collection.new # Collection | Details of the collection to create.

begin
  #Create collection
  result = api_instance.create_collection(collection_id, collection)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling CollectionsApi->create_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The ID to use for the collection.  This must start with an alphanumeric character followed by one or more alphanumeric or &#x60;-&#x60; characters. Strictly speaking, it must match the regular expression: &#x60;^[A-Za-z][A-Za-z0-9\\-]*$&#x60;. | 
 **collection** | [**Collection**](Collection.md)| Details of the collection to create. | 

### Return type

[**Collection**](Collection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_collection

> AnyType delete_collection(collection_id)

Delete collection

Delete a collection and all of its associated data.  > Note: this operation cannot be reversed.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to delete, e.g. `my-collection`.

begin
  #Delete collection
  result = api_instance.delete_collection(collection_id)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling CollectionsApi->delete_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to delete, e.g. &#x60;my-collection&#x60;. | 

### Return type

[**AnyType**](AnyType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_collection

> Collection get_collection(collection_id)

Get collection

Retrieve the details of a collection.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to retrieve, e.g. `my-collection`.

begin
  #Get collection
  result = api_instance.get_collection(collection_id)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling CollectionsApi->get_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to retrieve, e.g. &#x60;my-collection&#x60;. | 

### Return type

[**Collection**](Collection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_collections

> ListCollectionsResponse list_collections(opts)

List collections

Retrieve a list of collections in the account.

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

api_instance = SajariAPIClient::CollectionsApi.new
opts = {
  page_size: 56, # Integer | The maximum number of collections to return. The service may return fewer than this value.  If unspecified, at most 50 collections are returned.  The maximum value is 100; values above 100 are coerced to 100.
  page_token: 'page_token_example' # String | A page token, received from a previous [ListCollections](/api#operation/ListCollections) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListCollections](/api#operation/ListCollections) must match the call that provided the page token.
}

begin
  #List collections
  result = api_instance.list_collections(opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling CollectionsApi->list_collections: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The maximum number of collections to return. The service may return fewer than this value.  If unspecified, at most 50 collections are returned.  The maximum value is 100; values above 100 are coerced to 100. | [optional] 
 **page_token** | **String**| A page token, received from a previous [ListCollections](/api#operation/ListCollections) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListCollections](/api#operation/ListCollections) must match the call that provided the page token. | [optional] 

### Return type

[**ListCollectionsResponse**](ListCollectionsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_collection

> QueryCollectionResponse query_collection(collection_id, query_collection_request)

Query collection

Query the collection to search for records.  The following example demonstrates how to run a simple search for a particular string:  ```json {   \"variables\": { \"q\": \"search terms\" } } ```  For more information:  - See [filtering content](https://docs.sajari.com/user-guide/integrating-search/filters/) - See [tracking in the Go SDK](https://github.com/sajari/sdk-go/blob/v2/session.go) - See [tracking in the JS SDK](https://github.com/sajari/sajari-sdk-js/blob/master/src/session.ts)

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to query, e.g. `my-collection`.
query_collection_request = SajariAPIClient::QueryCollectionRequest.new # QueryCollectionRequest | 

begin
  #Query collection
  result = api_instance.query_collection(collection_id, query_collection_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling CollectionsApi->query_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to query, e.g. &#x60;my-collection&#x60;. | 
 **query_collection_request** | [**QueryCollectionRequest**](QueryCollectionRequest.md)|  | 

### Return type

[**QueryCollectionResponse**](QueryCollectionResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_collection

> Collection update_collection(collection_id, collection, opts)

Update collection

Update the details of a collection.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to update, e.g. `my-collection`.
collection = SajariAPIClient::Collection.new # Collection | Details of the collection to update.
opts = {
  update_mask: 'update_mask_example' # String | The list of fields to be updated, separated by a comma, e.g. `field1,field2`.  Each field should be in snake case, e.g. `display_name`.  For each field that you want to update, provide a corresponding value in the collection object containing the new value.
}

begin
  #Update collection
  result = api_instance.update_collection(collection_id, collection, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling CollectionsApi->update_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_id** | **String**| The collection to update, e.g. &#x60;my-collection&#x60;. | 
 **collection** | [**Collection**](Collection.md)| Details of the collection to update. | 
 **update_mask** | **String**| The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  Each field should be in snake case, e.g. &#x60;display_name&#x60;.  For each field that you want to update, provide a corresponding value in the collection object containing the new value. | [optional] 

### Return type

[**Collection**](Collection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

