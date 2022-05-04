# SajariAPIClient::CollectionsApi

All URIs are relative to *https://api.search.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_collection**](CollectionsApi.md#create_collection) | **POST** /v4/collections | Create collection |
| [**delete_collection**](CollectionsApi.md#delete_collection) | **DELETE** /v4/collections/{collection_id} | Delete collection |
| [**experiment**](CollectionsApi.md#experiment) | **POST** /v4/collections/{collection_id}:experiment | Experiment |
| [**get_collection**](CollectionsApi.md#get_collection) | **GET** /v4/collections/{collection_id} | Get collection |
| [**list_collections**](CollectionsApi.md#list_collections) | **GET** /v4/collections | List collections |
| [**query_collection**](CollectionsApi.md#query_collection) | **POST** /v4/collections/{collection_id}:query | Query collection |
| [**query_collection2**](CollectionsApi.md#query_collection2) | **POST** /v4/collections/{collection_id}:queryCollection | Query collection |
| [**track_event**](CollectionsApi.md#track_event) | **POST** /v4/collections/{collection_id}:trackEvent | Track event |
| [**update_collection**](CollectionsApi.md#update_collection) | **PATCH** /v4/collections/{collection_id} | Update collection |


## create_collection

> <Collection> create_collection(collection_id, collection, opts)

Create collection

Create an empty collection.  Before records can be added to a collection, the schema and pipelines for the collection have to be set up. Consider setting up new collections via the Search.io Console, which handles the creation of the schema and pipelines for you.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The ID to use for the collection.  This must start with an alphanumeric character followed by one or more alphanumeric or `-` characters. Strictly speaking, it must match the regular expression: `^[A-Za-z][A-Za-z0-9\\-]*$`.
collection = SajariAPIClient::Collection.new({display_name: 'display_name_example'}) # Collection | Details of the collection to create.
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
}

begin
  # Create collection
  result = api_instance.create_collection(collection_id, collection, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->create_collection: #{e}"
end
```

#### Using the create_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Collection>, Integer, Hash)> create_collection_with_http_info(collection_id, collection, opts)

```ruby
begin
  # Create collection
  data, status_code, headers = api_instance.create_collection_with_http_info(collection_id, collection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Collection>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->create_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The ID to use for the collection.  This must start with an alphanumeric character followed by one or more alphanumeric or &#x60;-&#x60; characters. Strictly speaking, it must match the regular expression: &#x60;^[A-Za-z][A-Za-z0-9\\-]*$&#x60;. |  |
| **collection** | [**Collection**](Collection.md) | Details of the collection to create. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |

### Return type

[**Collection**](Collection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_collection

> Object delete_collection(collection_id, opts)

Delete collection

Delete a collection and all of its associated data.  > Note: This operation cannot be reversed.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to delete, e.g. `my-collection`.
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
}

begin
  # Delete collection
  result = api_instance.delete_collection(collection_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->delete_collection: #{e}"
end
```

#### Using the delete_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_collection_with_http_info(collection_id, opts)

```ruby
begin
  # Delete collection
  data, status_code, headers = api_instance.delete_collection_with_http_info(collection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->delete_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to delete, e.g. &#x60;my-collection&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## experiment

> <ExperimentResponse> experiment(collection_id, experiment_request)

Experiment

Run a query on a collection with a hypothetical configuration to see what kinds of results it produces.  Saved promotions with a start date in the future are enabled during the experiment, unless they are explicitly disabled.  The following example demonstrates how to run a simple experiment for a string, against a pipeline and with a proposed promotion:  ```json {   \"pipeline\": { \"name\": \"my-pipeline\" },   \"variables\": { \"q\": \"search terms\" },   \"promotions\": [{     \"id\": \"1234\",     \"condition\": \"q = 'search terms'\",     \"pins\": [{       \"key\": { \"field\": \"id\", \"value\": \"54hdc7h2334h\" },       \"position\": 1     }]   }] } ```

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to query, e.g. `my-collection`.
experiment_request = SajariAPIClient::ExperimentRequest.new({variables: { key: 3.56}}) # ExperimentRequest | 

begin
  # Experiment
  result = api_instance.experiment(collection_id, experiment_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->experiment: #{e}"
end
```

#### Using the experiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExperimentResponse>, Integer, Hash)> experiment_with_http_info(collection_id, experiment_request)

```ruby
begin
  # Experiment
  data, status_code, headers = api_instance.experiment_with_http_info(collection_id, experiment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExperimentResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->experiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to query, e.g. &#x60;my-collection&#x60;. |  |
| **experiment_request** | [**ExperimentRequest**](ExperimentRequest.md) |  |  |

### Return type

[**ExperimentResponse**](ExperimentResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_collection

> <Collection> get_collection(collection_id, opts)

Get collection

Retrieve the details of a collection.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to retrieve, e.g. `my-collection`.
opts = {
  account_id: 'account_id_example', # String | The account that owns the collection, e.g. `1618535966441231024`.
  view: 'VIEW_UNSPECIFIED' # String | The amount of information to include in the retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the `BASIC` view.  - BASIC: Include basic information including display name and domains. This is the default value (for both [ListCollections](/docs/api#operation/ListCollections) and [GetCollection](/docs/api#operation/GetCollection)).  - FULL: Include the information from `BASIC`, plus full collection details like disk usage.
}

begin
  # Get collection
  result = api_instance.get_collection(collection_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->get_collection: #{e}"
end
```

#### Using the get_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Collection>, Integer, Hash)> get_collection_with_http_info(collection_id, opts)

```ruby
begin
  # Get collection
  data, status_code, headers = api_instance.get_collection_with_http_info(collection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Collection>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->get_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to retrieve, e.g. &#x60;my-collection&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |
| **view** | **String** | The amount of information to include in the retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the &#x60;BASIC&#x60; view.  - BASIC: Include basic information including display name and domains. This is the default value (for both [ListCollections](/docs/api#operation/ListCollections) and [GetCollection](/docs/api#operation/GetCollection)).  - FULL: Include the information from &#x60;BASIC&#x60;, plus full collection details like disk usage. | [optional][default to &#39;VIEW_UNSPECIFIED&#39;] |

### Return type

[**Collection**](Collection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_collections

> <ListCollectionsResponse> list_collections(opts)

List collections

Retrieve a list of collections in an account.

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

api_instance = SajariAPIClient::CollectionsApi.new
opts = {
  account_id: 'account_id_example', # String | The account that owns this set of collections, e.g. `1618535966441231024`.
  page_size: 56, # Integer | The maximum number of collections to return. The service may return fewer than this value.  If unspecified, at most 50 collections are returned.  The maximum value is 100; values above 100 are coerced to 100.
  page_token: 'page_token_example', # String | A page token, received from a previous [ListCollections](/docs/api#operation/ListCollections) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListCollections](/docs/api#operation/ListCollections) must match the call that provided the page token.
  view: 'VIEW_UNSPECIFIED' # String | The amount of information to include in each retrieved collection.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the `BASIC` view.  - BASIC: Include basic information including display name and domains. This is the default value (for both [ListCollections](/docs/api#operation/ListCollections) and [GetCollection](/docs/api#operation/GetCollection)).  - FULL: Include the information from `BASIC`, plus full collection details like disk usage.
}

begin
  # List collections
  result = api_instance.list_collections(opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->list_collections: #{e}"
end
```

#### Using the list_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCollectionsResponse>, Integer, Hash)> list_collections_with_http_info(opts)

```ruby
begin
  # List collections
  data, status_code, headers = api_instance.list_collections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCollectionsResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->list_collections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account that owns this set of collections, e.g. &#x60;1618535966441231024&#x60;. | [optional] |
| **page_size** | **Integer** | The maximum number of collections to return. The service may return fewer than this value.  If unspecified, at most 50 collections are returned.  The maximum value is 100; values above 100 are coerced to 100. | [optional] |
| **page_token** | **String** | A page token, received from a previous [ListCollections](/docs/api#operation/ListCollections) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListCollections](/docs/api#operation/ListCollections) must match the call that provided the page token. | [optional] |
| **view** | **String** | The amount of information to include in each retrieved collection.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the &#x60;BASIC&#x60; view.  - BASIC: Include basic information including display name and domains. This is the default value (for both [ListCollections](/docs/api#operation/ListCollections) and [GetCollection](/docs/api#operation/GetCollection)).  - FULL: Include the information from &#x60;BASIC&#x60;, plus full collection details like disk usage. | [optional][default to &#39;VIEW_UNSPECIFIED&#39;] |

### Return type

[**ListCollectionsResponse**](ListCollectionsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_collection

> <QueryCollectionResponse> query_collection(collection_id, query_collection_request, opts)

Query collection

Query the collection to search for records.  The following example demonstrates how to run a simple search for a particular string:  ```json {   \"variables\": { \"q\": \"search terms\" } } ```  For more information:  - See [filtering content](https://docs.search.io/documentation/fundamentals/integrating-search/filters-and-sort-options) - See [tracking in the Go SDK](https://github.com/sajari/sdk-go/blob/v2/session.go) - See [tracking in the JS SDK](https://github.com/sajari/sdk-js/blob/554e182e77d3ba99a9c100b208ebf3be414d2067/src/index.ts#L881)  Note: Unlike other API calls, the `QueryCollection` call can be called from a browser. When called from a browser, the `Account-Id` header must be set to your account ID.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to query, e.g. `my-collection`.
query_collection_request = SajariAPIClient::QueryCollectionRequest.new({variables: { key: 3.56}}) # QueryCollectionRequest | 
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.  Unlike other API calls, the `QueryCollection` call can be called from a browser. When called from a browser, the `Account-Id` header must be set to your account ID.
}

begin
  # Query collection
  result = api_instance.query_collection(collection_id, query_collection_request, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->query_collection: #{e}"
end
```

#### Using the query_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueryCollectionResponse>, Integer, Hash)> query_collection_with_http_info(collection_id, query_collection_request, opts)

```ruby
begin
  # Query collection
  data, status_code, headers = api_instance.query_collection_with_http_info(collection_id, query_collection_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueryCollectionResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->query_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to query, e.g. &#x60;my-collection&#x60;. |  |
| **query_collection_request** | [**QueryCollectionRequest**](QueryCollectionRequest.md) |  |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;.  Unlike other API calls, the &#x60;QueryCollection&#x60; call can be called from a browser. When called from a browser, the &#x60;Account-Id&#x60; header must be set to your account ID. | [optional] |

### Return type

[**QueryCollectionResponse**](QueryCollectionResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_collection2

> <QueryCollectionResponse> query_collection2(collection_id, query_collection_request)

Query collection

Query the collection to search for records.  The following example demonstrates how to run a simple search for a particular string:  ```json {   \"variables\": { \"q\": \"search terms\" } } ```  For more information:  - See [filtering content](https://docs.search.io/documentation/fundamentals/integrating-search/filters-and-sort-options) - See [tracking in the Go SDK](https://github.com/sajari/sdk-go/blob/v2/session.go) - See [tracking in the JS SDK](https://github.com/sajari/sdk-js/blob/554e182e77d3ba99a9c100b208ebf3be414d2067/src/index.ts#L881)  Note: Unlike other API calls, the `QueryCollection` call can be called from a browser. When called from a browser, the `Account-Id` header must be set to your account ID.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to query, e.g. `my-collection`.
query_collection_request = SajariAPIClient::QueryCollectionRequest.new({variables: { key: 3.56}}) # QueryCollectionRequest | 

begin
  # Query collection
  result = api_instance.query_collection2(collection_id, query_collection_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->query_collection2: #{e}"
end
```

#### Using the query_collection2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueryCollectionResponse>, Integer, Hash)> query_collection2_with_http_info(collection_id, query_collection_request)

```ruby
begin
  # Query collection
  data, status_code, headers = api_instance.query_collection2_with_http_info(collection_id, query_collection_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueryCollectionResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->query_collection2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to query, e.g. &#x60;my-collection&#x60;. |  |
| **query_collection_request** | [**QueryCollectionRequest**](QueryCollectionRequest.md) |  |  |

### Return type

[**QueryCollectionResponse**](QueryCollectionResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## track_event

> Object track_event(account_id, collection_id, event)

Track event

Track an analytics event when a user interacts with an object returned by a [QueryCollection](/docs/api/#operation/QueryCollection) request.  An analytics event can be tracked for the following objects:  - Results - Promotion banners - Redirects  When tracking redirect events, set `type` to `redirect`.  Note: You must pass an `Account-Id` header.

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

api_instance = SajariAPIClient::CollectionsApi.new
account_id = 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
collection_id = 'collection_id_example' # String | The collection to track the event against, e.g. `my-collection`.
event = SajariAPIClient::Event.new({query_id: 'query_id_example', type: 'type_example'}) # Event | The details of the event to track.

begin
  # Track event
  result = api_instance.track_event(account_id, collection_id, event)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->track_event: #{e}"
end
```

#### Using the track_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> track_event_with_http_info(account_id, collection_id, event)

```ruby
begin
  # Track event
  data, status_code, headers = api_instance.track_event_with_http_info(account_id, collection_id, event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->track_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. |  |
| **collection_id** | **String** | The collection to track the event against, e.g. &#x60;my-collection&#x60;. |  |
| **event** | [**Event**](Event.md) | The details of the event to track. |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_collection

> <Collection> update_collection(collection_id, collection, opts)

Update collection

Update the details of a collection.

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

api_instance = SajariAPIClient::CollectionsApi.new
collection_id = 'collection_id_example' # String | The collection to update, e.g. `my-collection`.
collection = SajariAPIClient::Collection.new({display_name: 'display_name_example'}) # Collection | The details of the collection to update.
opts = {
  account_id: 'account_id_example', # String | The account that owns the collection, e.g. `1618535966441231024`.
  update_mask: 'update_mask_example' # String | The list of fields to update, separated by a comma, e.g. `authorized_query_domains,display_name`.  Each field should be in snake case.  For each field that you want to update, provide a corresponding value in the collection object containing the new value.
}

begin
  # Update collection
  result = api_instance.update_collection(collection_id, collection, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->update_collection: #{e}"
end
```

#### Using the update_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Collection>, Integer, Hash)> update_collection_with_http_info(collection_id, collection, opts)

```ruby
begin
  # Update collection
  data, status_code, headers = api_instance.update_collection_with_http_info(collection_id, collection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Collection>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling CollectionsApi->update_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to update, e.g. &#x60;my-collection&#x60;. |  |
| **collection** | [**Collection**](Collection.md) | The details of the collection to update. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |
| **update_mask** | **String** | The list of fields to update, separated by a comma, e.g. &#x60;authorized_query_domains,display_name&#x60;.  Each field should be in snake case.  For each field that you want to update, provide a corresponding value in the collection object containing the new value. | [optional] |

### Return type

[**Collection**](Collection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

