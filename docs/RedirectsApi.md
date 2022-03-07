# SajariAPIClient::RedirectsApi

All URIs are relative to *https://api.search.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_redirect**](RedirectsApi.md#create_redirect) | **POST** /v4/collections/{collection_id}/redirects | Create redirect |
| [**delete_redirect**](RedirectsApi.md#delete_redirect) | **DELETE** /v4/collections/{collection_id}/redirects/{redirect_id} | Delete redirect |
| [**get_redirect**](RedirectsApi.md#get_redirect) | **GET** /v4/collections/{collection_id}/redirects/{redirect_id} | Get redirect |
| [**list_redirects**](RedirectsApi.md#list_redirects) | **GET** /v4/collections/{collection_id}/redirects | List redirects |
| [**update_redirect**](RedirectsApi.md#update_redirect) | **PATCH** /v4/collections/{collection_id}/redirects/{redirect_id} | Update redirect |


## create_redirect

> <Redirect> create_redirect(collection_id, redirect)

Create redirect

Create a new redirect in a collection.

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

api_instance = SajariAPIClient::RedirectsApi.new
collection_id = 'collection_id_example' # String | The collection to create a redirect in, e.g. `my-collection`.
redirect = SajariAPIClient::Redirect.new({condition: 'condition_example', target: 'target_example'}) # Redirect | The redirect to create.

begin
  # Create redirect
  result = api_instance.create_redirect(collection_id, redirect)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->create_redirect: #{e}"
end
```

#### Using the create_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Redirect>, Integer, Hash)> create_redirect_with_http_info(collection_id, redirect)

```ruby
begin
  # Create redirect
  data, status_code, headers = api_instance.create_redirect_with_http_info(collection_id, redirect)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Redirect>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->create_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to create a redirect in, e.g. &#x60;my-collection&#x60;. |  |
| **redirect** | [**Redirect**](Redirect.md) | The redirect to create. |  |

### Return type

[**Redirect**](Redirect.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_redirect

> Object delete_redirect(collection_id, redirect_id)

Delete redirect

Delete a redirect and all of its associated data.  > Note: This operation cannot be reversed.

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

api_instance = SajariAPIClient::RedirectsApi.new
collection_id = 'collection_id_example' # String | The collection the redirect belongs to, e.g. `my-collection`.
redirect_id = 'redirect_id_example' # String | The redirect to delete, e.g. `1234`.

begin
  # Delete redirect
  result = api_instance.delete_redirect(collection_id, redirect_id)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->delete_redirect: #{e}"
end
```

#### Using the delete_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_redirect_with_http_info(collection_id, redirect_id)

```ruby
begin
  # Delete redirect
  data, status_code, headers = api_instance.delete_redirect_with_http_info(collection_id, redirect_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->delete_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection the redirect belongs to, e.g. &#x60;my-collection&#x60;. |  |
| **redirect_id** | **String** | The redirect to delete, e.g. &#x60;1234&#x60;. |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_redirect

> <Redirect> get_redirect(collection_id, redirect_id)

Get redirect

Retrieve the details of a redirect.

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

api_instance = SajariAPIClient::RedirectsApi.new
collection_id = 'collection_id_example' # String | The collection that owns the redirect, e.g. `my-collection`.
redirect_id = 'redirect_id_example' # String | The redirect to retrieve, e.g. `1234`.

begin
  # Get redirect
  result = api_instance.get_redirect(collection_id, redirect_id)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->get_redirect: #{e}"
end
```

#### Using the get_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Redirect>, Integer, Hash)> get_redirect_with_http_info(collection_id, redirect_id)

```ruby
begin
  # Get redirect
  data, status_code, headers = api_instance.get_redirect_with_http_info(collection_id, redirect_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Redirect>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->get_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns the redirect, e.g. &#x60;my-collection&#x60;. |  |
| **redirect_id** | **String** | The redirect to retrieve, e.g. &#x60;1234&#x60;. |  |

### Return type

[**Redirect**](Redirect.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_redirects

> <ListRedirectsResponse> list_redirects(collection_id, opts)

List redirects

Retrieve a list of redirects in a collection.

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

api_instance = SajariAPIClient::RedirectsApi.new
collection_id = 'collection_id_example' # String | The collection that owns this set of redirects, e.g. `my-collection`.
opts = {
  page_size: 56, # Integer | The maximum number of redirects to return. The service may return fewer than this value.  If unspecified, at most 50 redirects are returned.  The maximum value is 1000; values above 1000 are coerced to 1000.
  page_token: 'page_token_example' # String | A page token, received from a previous [ListRedirects](/api#operation/ListRedirects) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListRedirects](/api#operation/ListRedirects) must match the call that provided the page token.
}

begin
  # List redirects
  result = api_instance.list_redirects(collection_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->list_redirects: #{e}"
end
```

#### Using the list_redirects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRedirectsResponse>, Integer, Hash)> list_redirects_with_http_info(collection_id, opts)

```ruby
begin
  # List redirects
  data, status_code, headers = api_instance.list_redirects_with_http_info(collection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRedirectsResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->list_redirects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns this set of redirects, e.g. &#x60;my-collection&#x60;. |  |
| **page_size** | **Integer** | The maximum number of redirects to return. The service may return fewer than this value.  If unspecified, at most 50 redirects are returned.  The maximum value is 1000; values above 1000 are coerced to 1000. | [optional] |
| **page_token** | **String** | A page token, received from a previous [ListRedirects](/api#operation/ListRedirects) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListRedirects](/api#operation/ListRedirects) must match the call that provided the page token. | [optional] |

### Return type

[**ListRedirectsResponse**](ListRedirectsResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_redirect

> <Redirect> update_redirect(collection_id, redirect_id, update_mask, redirect)

Update redirect

Update the details of a redirect.  Pass each field that you want to update in the request body. Also specify the name of each field that you want to update in the `update_mask` in the request URL query string. Separate multiple fields with a comma. Fields included in the request body, but not included in the field mask are not updated.  For example, to update the `condition` field, make a `PATCH` request to the URL:  ``` /v4/collections/{collection_id}/redirects/{redirect_id}?update_mask=condition ```  With the JSON body:  ``` {   \"condition\": \"new value\",   \"target\": \"...\" } ```  > Note: In this example `target` is not updated because it is not specified in the `update_mask`.

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

api_instance = SajariAPIClient::RedirectsApi.new
collection_id = 'collection_id_example' # String | The collection the redirect belongs to, e.g. `my-collection`.
redirect_id = 'redirect_id_example' # String | The redirect to update, e.g. `1234`.
update_mask = 'update_mask_example' # String | The list of fields to be updated, separated by a comma, e.g. `field1,field2`.  Each field should be in snake case, e.g. `condition`, `target`.  For each field that you want to update, provide a corresponding value in the redirect object containing the new value.
redirect = SajariAPIClient::Redirect.new({condition: 'condition_example', target: 'target_example'}) # Redirect | Details of the redirect to update.

begin
  # Update redirect
  result = api_instance.update_redirect(collection_id, redirect_id, update_mask, redirect)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->update_redirect: #{e}"
end
```

#### Using the update_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Redirect>, Integer, Hash)> update_redirect_with_http_info(collection_id, redirect_id, update_mask, redirect)

```ruby
begin
  # Update redirect
  data, status_code, headers = api_instance.update_redirect_with_http_info(collection_id, redirect_id, update_mask, redirect)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Redirect>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling RedirectsApi->update_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection the redirect belongs to, e.g. &#x60;my-collection&#x60;. |  |
| **redirect_id** | **String** | The redirect to update, e.g. &#x60;1234&#x60;. |  |
| **update_mask** | **String** | The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  Each field should be in snake case, e.g. &#x60;condition&#x60;, &#x60;target&#x60;.  For each field that you want to update, provide a corresponding value in the redirect object containing the new value. |  |
| **redirect** | [**Redirect**](Redirect.md) | Details of the redirect to update. |  |

### Return type

[**Redirect**](Redirect.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

