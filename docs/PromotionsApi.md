# SajariAPIClient::PromotionsApi

All URIs are relative to *https://api.search.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_promotion**](PromotionsApi.md#create_promotion) | **POST** /v4/collections/{collection_id}/promotions | Create promotion |
| [**delete_promotion**](PromotionsApi.md#delete_promotion) | **DELETE** /v4/collections/{collection_id}/promotions/{promotion_id} | Delete promotion |
| [**get_promotion**](PromotionsApi.md#get_promotion) | **GET** /v4/collections/{collection_id}/promotions/{promotion_id} | Get promotion |
| [**list_promotions**](PromotionsApi.md#list_promotions) | **GET** /v4/collections/{collection_id}/promotions | List promotions |
| [**update_promotion**](PromotionsApi.md#update_promotion) | **PATCH** /v4/collections/{collection_id}/promotions/{promotion_id} | Update promotion |


## create_promotion

> <Promotion> create_promotion(collection_id, promotion, opts)

Create promotion

Create a new promotion in a collection.

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

api_instance = SajariAPIClient::PromotionsApi.new
collection_id = 'collection_id_example' # String | The collection to create a promotion in, e.g. `my-collection`.
promotion = SajariAPIClient::Promotion.new({condition: 'condition_example', display_name: 'display_name_example'}) # Promotion | The promotion to create.
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
}

begin
  # Create promotion
  result = api_instance.create_promotion(collection_id, promotion, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->create_promotion: #{e}"
end
```

#### Using the create_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Promotion>, Integer, Hash)> create_promotion_with_http_info(collection_id, promotion, opts)

```ruby
begin
  # Create promotion
  data, status_code, headers = api_instance.create_promotion_with_http_info(collection_id, promotion, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Promotion>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->create_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to create a promotion in, e.g. &#x60;my-collection&#x60;. |  |
| **promotion** | [**Promotion**](Promotion.md) | The promotion to create. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |

### Return type

[**Promotion**](Promotion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_promotion

> Object delete_promotion(collection_id, promotion_id, opts)

Delete promotion

Delete a promotion and all of its associated data.  > Note: This operation cannot be reversed.

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

api_instance = SajariAPIClient::PromotionsApi.new
collection_id = 'collection_id_example' # String | The collection the promotion belongs to, e.g. `my-collection`.
promotion_id = 'promotion_id_example' # String | The promotion to delete, e.g. `1234`.
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
}

begin
  # Delete promotion
  result = api_instance.delete_promotion(collection_id, promotion_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion: #{e}"
end
```

#### Using the delete_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_promotion_with_http_info(collection_id, promotion_id, opts)

```ruby
begin
  # Delete promotion
  data, status_code, headers = api_instance.delete_promotion_with_http_info(collection_id, promotion_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection the promotion belongs to, e.g. &#x60;my-collection&#x60;. |  |
| **promotion_id** | **String** | The promotion to delete, e.g. &#x60;1234&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_promotion

> <Promotion> get_promotion(collection_id, promotion_id, opts)

Get promotion

Retrieve the details of a promotion.

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

api_instance = SajariAPIClient::PromotionsApi.new
collection_id = 'collection_id_example' # String | The collection that owns the promotion, e.g. `my-collection`.
promotion_id = 'promotion_id_example' # String | The promotion to retrieve, e.g. `1234`.
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
}

begin
  # Get promotion
  result = api_instance.get_promotion(collection_id, promotion_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion: #{e}"
end
```

#### Using the get_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Promotion>, Integer, Hash)> get_promotion_with_http_info(collection_id, promotion_id, opts)

```ruby
begin
  # Get promotion
  data, status_code, headers = api_instance.get_promotion_with_http_info(collection_id, promotion_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Promotion>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns the promotion, e.g. &#x60;my-collection&#x60;. |  |
| **promotion_id** | **String** | The promotion to retrieve, e.g. &#x60;1234&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |

### Return type

[**Promotion**](Promotion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_promotions

> <ListPromotionsResponse> list_promotions(collection_id, opts)

List promotions

Retrieve a list of promotions in a collection.  Promotion pins, exclusions and filter boosts are not returned in this call.

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

api_instance = SajariAPIClient::PromotionsApi.new
collection_id = 'collection_id_example' # String | The collection that owns this set of promotions, e.g. `my-collection`.
opts = {
  account_id: 'account_id_example', # String | The account that owns the collection, e.g. `1618535966441231024`.
  page_size: 56, # Integer | The maximum number of promotions to return. The service may return fewer than this value.  If unspecified, at most 50 promotions are returned.  The maximum value is 1000; values above 1000 are coerced to 1000.
  page_token: 'page_token_example', # String | A page token, received from a previous [ListPromotions](/docs/api#operation/ListPromotions) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListPromotions](/docs/api#operation/ListPromotions) must match the call that provided the page token.
  view: 'PROMOTION_VIEW_UNSPECIFIED' # String | The amount of information to include in each retrieved promotion.   - PROMOTION_VIEW_UNSPECIFIED: The default / unset value. The API defaults to the `FULL` view.  - BASIC: Include basic information including name, start time and end time, but not detailed information about the promotion effects.  - FULL: Returns all information about a promotion. This is the default value.
}

begin
  # List promotions
  result = api_instance.list_promotions(collection_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->list_promotions: #{e}"
end
```

#### Using the list_promotions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPromotionsResponse>, Integer, Hash)> list_promotions_with_http_info(collection_id, opts)

```ruby
begin
  # List promotions
  data, status_code, headers = api_instance.list_promotions_with_http_info(collection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPromotionsResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->list_promotions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns this set of promotions, e.g. &#x60;my-collection&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |
| **page_size** | **Integer** | The maximum number of promotions to return. The service may return fewer than this value.  If unspecified, at most 50 promotions are returned.  The maximum value is 1000; values above 1000 are coerced to 1000. | [optional] |
| **page_token** | **String** | A page token, received from a previous [ListPromotions](/docs/api#operation/ListPromotions) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListPromotions](/docs/api#operation/ListPromotions) must match the call that provided the page token. | [optional] |
| **view** | **String** | The amount of information to include in each retrieved promotion.   - PROMOTION_VIEW_UNSPECIFIED: The default / unset value. The API defaults to the &#x60;FULL&#x60; view.  - BASIC: Include basic information including name, start time and end time, but not detailed information about the promotion effects.  - FULL: Returns all information about a promotion. This is the default value. | [optional][default to &#39;PROMOTION_VIEW_UNSPECIFIED&#39;] |

### Return type

[**ListPromotionsResponse**](ListPromotionsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_promotion

> <Promotion> update_promotion(collection_id, promotion_id, update_mask, promotion, opts)

Update promotion

Update the details of a promotion.  Pass each field that you want to update in the request body. Also specify the name of each field that you want to update in the `update_mask` in the request URL query string. Separate multiple fields with a comma. Fields included in the request body, but not included in the field mask are not updated.  For example, to update the `display_name` and `start_time` fields, make a `PATCH` request to the URL:  ``` /v4/collections/{collection_id}/promotions/{promotion_id}?update_mask=display_name,start_time ```  With the JSON body:  ``` {   \"display_name\": \"new value\",   \"start_time\": \"2006-01-02T15:04:05Z07:00\",   \"end_time\": \"2006-01-02T15:04:05Z07:00\" } ```  > Note: In this example `end_time` is not updated because it is not specified in the `update_mask`.

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

api_instance = SajariAPIClient::PromotionsApi.new
collection_id = 'collection_id_example' # String | The collection the promotion belongs to, e.g. `my-collection`.
promotion_id = 'promotion_id_example' # String | The promotion to update, e.g. `1234`.
update_mask = 'update_mask_example' # String | The list of fields to be updated, separated by a comma, e.g. `field1,field2`.  Each field should be in snake case, e.g. `display_name`, `filter_boosts`.  For each field that you want to update, provide a corresponding value in the promotion object containing the new value.
promotion = SajariAPIClient::Promotion.new({condition: 'condition_example', display_name: 'display_name_example'}) # Promotion | Details of the promotion to update.
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
}

begin
  # Update promotion
  result = api_instance.update_promotion(collection_id, promotion_id, update_mask, promotion, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion: #{e}"
end
```

#### Using the update_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Promotion>, Integer, Hash)> update_promotion_with_http_info(collection_id, promotion_id, update_mask, promotion, opts)

```ruby
begin
  # Update promotion
  data, status_code, headers = api_instance.update_promotion_with_http_info(collection_id, promotion_id, update_mask, promotion, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Promotion>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection the promotion belongs to, e.g. &#x60;my-collection&#x60;. |  |
| **promotion_id** | **String** | The promotion to update, e.g. &#x60;1234&#x60;. |  |
| **update_mask** | **String** | The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  Each field should be in snake case, e.g. &#x60;display_name&#x60;, &#x60;filter_boosts&#x60;.  For each field that you want to update, provide a corresponding value in the promotion object containing the new value. |  |
| **promotion** | [**Promotion**](Promotion.md) | Details of the promotion to update. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |

### Return type

[**Promotion**](Promotion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

