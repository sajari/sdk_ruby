# SajariAPIClient::PipelinesApi

All URIs are relative to *https://api.search.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_pipeline**](PipelinesApi.md#create_pipeline) | **POST** /v4/collections/{collection_id}/pipelines | Create pipeline |
| [**generate_pipelines**](PipelinesApi.md#generate_pipelines) | **POST** /v4/collections/{collection_id}:generatePipelines | Generate pipelines |
| [**get_default_pipeline**](PipelinesApi.md#get_default_pipeline) | **GET** /v4/collections/{collection_id}:getDefaultPipeline | Get default pipeline |
| [**get_default_version**](PipelinesApi.md#get_default_version) | **GET** /v4/collections/{collection_id}/pipelines/{type}/{name}:getDefaultVersion | Get default pipeline version |
| [**get_pipeline**](PipelinesApi.md#get_pipeline) | **GET** /v4/collections/{collection_id}/pipelines/{type}/{name}/{version} | Get pipeline |
| [**list_pipelines**](PipelinesApi.md#list_pipelines) | **GET** /v4/collections/{collection_id}/pipelines | List pipelines |
| [**set_default_pipeline**](PipelinesApi.md#set_default_pipeline) | **POST** /v4/collections/{collection_id}:setDefaultPipeline | Set default pipeline |
| [**set_default_version**](PipelinesApi.md#set_default_version) | **POST** /v4/collections/{collection_id}/pipelines/{type}/{name}:setDefaultVersion | Set default pipeline version |


## create_pipeline

> <Pipeline> create_pipeline(collection_id, pipeline, opts)

Create pipeline

Create a new pipeline.  Pipelines are immutable once created. If you want to change a pipeline e.g. to add or change some steps, you need to create a new version of that pipeline.  To start using a new pipeline you need to update your record ingestion calls and/or your query calls to specify the new pipeline.  To create the pipeline from YAML, set the request's `Content-Type` header to `application/yaml` and submit the pipeline's YAML in the request body.

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection to create the pipeline in, e.g. `my-collection`.
pipeline = SajariAPIClient::Pipeline.new({name: 'name_example', type: SajariAPIClient::PipelineType::TYPE_UNSPECIFIED, version: 'version_example'}) # Pipeline | The pipeline to create.
opts = {
  account_id: 'account_id_example' # String | The account that owns the collection, e.g. `1618535966441231024`.
}

begin
  # Create pipeline
  result = api_instance.create_pipeline(collection_id, pipeline, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline: #{e}"
end
```

#### Using the create_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> create_pipeline_with_http_info(collection_id, pipeline, opts)

```ruby
begin
  # Create pipeline
  data, status_code, headers = api_instance.create_pipeline_with_http_info(collection_id, pipeline, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to create the pipeline in, e.g. &#x60;my-collection&#x60;. |  |
| **pipeline** | [**Pipeline**](Pipeline.md) | The pipeline to create. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json, application/yaml
- **Accept**: application/json, application/yaml


## generate_pipelines

> <GeneratePipelinesResponse> generate_pipelines(collection_id, generate_pipelines_request)

Generate pipelines

Generate basic record, query and autocomplete pipeline templates. Use these templates as a starting point for your collection's pipelines.  This call returns a set of pipelines that you can pass directly to the create pipeline call.  The generated templates can be returned in JSON, the default, or YAML. To return the generated pipelines in YAML, set the request's `Accept` header to `application/yaml`. The three pipelines in the YAML response are separated by three dashes (`---`).

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection, e.g. `my-collection`.
generate_pipelines_request = SajariAPIClient::GeneratePipelinesRequest.new({searchable_fields: ['searchable_fields_example']}) # GeneratePipelinesRequest | 

begin
  # Generate pipelines
  result = api_instance.generate_pipelines(collection_id, generate_pipelines_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->generate_pipelines: #{e}"
end
```

#### Using the generate_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneratePipelinesResponse>, Integer, Hash)> generate_pipelines_with_http_info(collection_id, generate_pipelines_request)

```ruby
begin
  # Generate pipelines
  data, status_code, headers = api_instance.generate_pipelines_with_http_info(collection_id, generate_pipelines_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneratePipelinesResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->generate_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection, e.g. &#x60;my-collection&#x60;. |  |
| **generate_pipelines_request** | [**GeneratePipelinesRequest**](GeneratePipelinesRequest.md) |  |  |

### Return type

[**GeneratePipelinesResponse**](GeneratePipelinesResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/yaml


## get_default_pipeline

> <GetDefaultPipelineResponse> get_default_pipeline(collection_id, type)

Get default pipeline

Get the default pipeline for a collection.  Every collection has a default record pipeline and a default query pipeline.  When a pipeline is required to complete an operation, it can be omitted from the request if a default pipeline has been set. When adding a record to a collection, the default record pipeline is used if none is provided. When querying a collection, the default query pipeline is used if none is provided.

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection to get the default query pipeline of, e.g. `my-collection`.
type = 'TYPE_UNSPECIFIED' # String | The type of the pipeline to get.   - TYPE_UNSPECIFIED: Pipeline type not specified.  - RECORD: Record pipeline.  - QUERY: Query pipeline.

begin
  # Get default pipeline
  result = api_instance.get_default_pipeline(collection_id, type)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->get_default_pipeline: #{e}"
end
```

#### Using the get_default_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDefaultPipelineResponse>, Integer, Hash)> get_default_pipeline_with_http_info(collection_id, type)

```ruby
begin
  # Get default pipeline
  data, status_code, headers = api_instance.get_default_pipeline_with_http_info(collection_id, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDefaultPipelineResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->get_default_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to get the default query pipeline of, e.g. &#x60;my-collection&#x60;. |  |
| **type** | **String** | The type of the pipeline to get.   - TYPE_UNSPECIFIED: Pipeline type not specified.  - RECORD: Record pipeline.  - QUERY: Query pipeline. | [default to &#39;TYPE_UNSPECIFIED&#39;] |

### Return type

[**GetDefaultPipelineResponse**](GetDefaultPipelineResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_default_version

> <Pipeline> get_default_version(collection_id, type, name, opts)

Get default pipeline version

Get the default version for a given pipeline.  The default version of a pipeline is used when a pipeline is referred to without specifying a version.  This allows you to change the pipeline version used for requests without having to change your code.  To retrieve the pipeline in YAML, set the request's `Accept` header to `application/yaml`.

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection that owns the pipeline to get the default version of, e.g. `my-collection`.
type = 'TYPE_UNSPECIFIED' # String | The type of the pipeline to get the default version of.
name = 'name_example' # String | The name of the pipeline to get the default version of, e.g. `my-pipeline`.
opts = {
  account_id: 'account_id_example', # String | The account that owns the collection, e.g. `1618535966441231024`.
  view: 'VIEW_UNSPECIFIED' # String | The amount of information to include in the retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the `BASIC` view.  - BASIC: Include basic information including type, name, version and description but not the full step configuration. This is the default value (for both [ListPipelines](/docs/api#operation/ListPipelines) and [GetPipeline](/docs/api#operation/GetPipeline)).  - FULL: Include the information from `BASIC`, plus full step configuration.
}

begin
  # Get default pipeline version
  result = api_instance.get_default_version(collection_id, type, name, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->get_default_version: #{e}"
end
```

#### Using the get_default_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_default_version_with_http_info(collection_id, type, name, opts)

```ruby
begin
  # Get default pipeline version
  data, status_code, headers = api_instance.get_default_version_with_http_info(collection_id, type, name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->get_default_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns the pipeline to get the default version of, e.g. &#x60;my-collection&#x60;. |  |
| **type** | **String** | The type of the pipeline to get the default version of. |  |
| **name** | **String** | The name of the pipeline to get the default version of, e.g. &#x60;my-pipeline&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |
| **view** | **String** | The amount of information to include in the retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the &#x60;BASIC&#x60; view.  - BASIC: Include basic information including type, name, version and description but not the full step configuration. This is the default value (for both [ListPipelines](/docs/api#operation/ListPipelines) and [GetPipeline](/docs/api#operation/GetPipeline)).  - FULL: Include the information from &#x60;BASIC&#x60;, plus full step configuration. | [optional][default to &#39;VIEW_UNSPECIFIED&#39;] |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/yaml


## get_pipeline

> <Pipeline> get_pipeline(collection_id, type, name, version, opts)

Get pipeline

Retrieve the details of a pipeline. Supply the type, name and version.  To retrieve the pipeline in YAML, set the request's `Accept` header to `application/yaml`.

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection that owns the pipeline, e.g. `my-collection`.
type = 'TYPE_UNSPECIFIED' # String | The type of the pipeline to retrieve.
name = 'name_example' # String | The name of the pipeline to retrieve, e.g. `my-pipeline`.
version = 'version_example' # String | The version of the pipeline to retrieve, e.g. `42`.
opts = {
  account_id: 'account_id_example', # String | The account that owns the collection, e.g. `1618535966441231024`.
  view: 'VIEW_UNSPECIFIED' # String | The amount of information to include in the retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the `BASIC` view.  - BASIC: Include basic information including type, name, version and description but not the full step configuration. This is the default value (for both [ListPipelines](/docs/api#operation/ListPipelines) and [GetPipeline](/docs/api#operation/GetPipeline)).  - FULL: Include the information from `BASIC`, plus full step configuration.
}

begin
  # Get pipeline
  result = api_instance.get_pipeline(collection_id, type, name, version, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline: #{e}"
end
```

#### Using the get_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_pipeline_with_http_info(collection_id, type, name, version, opts)

```ruby
begin
  # Get pipeline
  data, status_code, headers = api_instance.get_pipeline_with_http_info(collection_id, type, name, version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns the pipeline, e.g. &#x60;my-collection&#x60;. |  |
| **type** | **String** | The type of the pipeline to retrieve. |  |
| **name** | **String** | The name of the pipeline to retrieve, e.g. &#x60;my-pipeline&#x60;. |  |
| **version** | **String** | The version of the pipeline to retrieve, e.g. &#x60;42&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |
| **view** | **String** | The amount of information to include in the retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the &#x60;BASIC&#x60; view.  - BASIC: Include basic information including type, name, version and description but not the full step configuration. This is the default value (for both [ListPipelines](/docs/api#operation/ListPipelines) and [GetPipeline](/docs/api#operation/GetPipeline)).  - FULL: Include the information from &#x60;BASIC&#x60;, plus full step configuration. | [optional][default to &#39;VIEW_UNSPECIFIED&#39;] |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/yaml


## list_pipelines

> <ListPipelinesResponse> list_pipelines(collection_id, opts)

List pipelines

Retrieve a list of pipelines in a collection.

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection that owns this set of pipelines, e.g. `my-collection`.
opts = {
  account_id: 'account_id_example', # String | The account that owns the collection, e.g. `1618535966441231024`.
  page_size: 56, # Integer | The maximum number of pipelines to return. The service may return fewer than this value.  If unspecified, at most 50 pipelines are returned.  The maximum value is 1000; values above 1000 are coerced to 1000.
  page_token: 'page_token_example', # String | A page token, received from a previous [ListPipelines](/docs/api#operation/ListPipelines) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListPipelines](/docs/api#operation/ListPipelines) must match the call that provided the page token.
  view: 'VIEW_UNSPECIFIED' # String | The amount of information to include in each retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the `BASIC` view.  - BASIC: Include basic information including type, name, version and description but not the full step configuration. This is the default value (for both [ListPipelines](/docs/api#operation/ListPipelines) and [GetPipeline](/docs/api#operation/GetPipeline)).  - FULL: Include the information from `BASIC`, plus full step configuration.
}

begin
  # List pipelines
  result = api_instance.list_pipelines(collection_id, opts)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->list_pipelines: #{e}"
end
```

#### Using the list_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPipelinesResponse>, Integer, Hash)> list_pipelines_with_http_info(collection_id, opts)

```ruby
begin
  # List pipelines
  data, status_code, headers = api_instance.list_pipelines_with_http_info(collection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPipelinesResponse>
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->list_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns this set of pipelines, e.g. &#x60;my-collection&#x60;. |  |
| **account_id** | **String** | The account that owns the collection, e.g. &#x60;1618535966441231024&#x60;. | [optional] |
| **page_size** | **Integer** | The maximum number of pipelines to return. The service may return fewer than this value.  If unspecified, at most 50 pipelines are returned.  The maximum value is 1000; values above 1000 are coerced to 1000. | [optional] |
| **page_token** | **String** | A page token, received from a previous [ListPipelines](/docs/api#operation/ListPipelines) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListPipelines](/docs/api#operation/ListPipelines) must match the call that provided the page token. | [optional] |
| **view** | **String** | The amount of information to include in each retrieved pipeline.   - VIEW_UNSPECIFIED: The default / unset value. The API defaults to the &#x60;BASIC&#x60; view.  - BASIC: Include basic information including type, name, version and description but not the full step configuration. This is the default value (for both [ListPipelines](/docs/api#operation/ListPipelines) and [GetPipeline](/docs/api#operation/GetPipeline)).  - FULL: Include the information from &#x60;BASIC&#x60;, plus full step configuration. | [optional][default to &#39;VIEW_UNSPECIFIED&#39;] |

### Return type

[**ListPipelinesResponse**](ListPipelinesResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_default_pipeline

> Object set_default_pipeline(collection_id, set_default_pipeline_request)

Set default pipeline

Set the default pipeline for a collection.  Every collection has a default record pipeline and a default query pipeline.  When a pipeline is required to complete an operation, it can be omitted from the request if a default pipeline has been set. When adding a record to a collection, the default record pipeline is used if none is provided. When querying a collection, the default query pipeline is used if none is provided.  Once a default pipeline has been set it cannot be cleared, only set to another pipeline.

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection to set the default query pipeline of, e.g. `my-collection`.
set_default_pipeline_request = SajariAPIClient::SetDefaultPipelineRequest.new({pipeline: 'pipeline_example', type: SajariAPIClient::PipelineType::TYPE_UNSPECIFIED}) # SetDefaultPipelineRequest | 

begin
  # Set default pipeline
  result = api_instance.set_default_pipeline(collection_id, set_default_pipeline_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->set_default_pipeline: #{e}"
end
```

#### Using the set_default_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> set_default_pipeline_with_http_info(collection_id, set_default_pipeline_request)

```ruby
begin
  # Set default pipeline
  data, status_code, headers = api_instance.set_default_pipeline_with_http_info(collection_id, set_default_pipeline_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->set_default_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection to set the default query pipeline of, e.g. &#x60;my-collection&#x60;. |  |
| **set_default_pipeline_request** | [**SetDefaultPipelineRequest**](SetDefaultPipelineRequest.md) |  |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_default_version

> Object set_default_version(collection_id, type, name, set_default_version_request)

Set default pipeline version

Set the default version for a given pipeline.  The default version of a pipeline is used when a pipeline is referred to without specifying a version.  This allows you to change the pipeline version used for requests without having to change your code.

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

api_instance = SajariAPIClient::PipelinesApi.new
collection_id = 'collection_id_example' # String | The collection that owns the pipeline to set the default version of, e.g. `my-collection`.
type = 'TYPE_UNSPECIFIED' # String | The type of the pipeline to set the default version of.
name = 'name_example' # String | The name of the pipeline to set the default version of, e.g. `my-pipeline`.
set_default_version_request = SajariAPIClient::SetDefaultVersionRequest.new({version: 'version_example'}) # SetDefaultVersionRequest | 

begin
  # Set default pipeline version
  result = api_instance.set_default_version(collection_id, type, name, set_default_version_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->set_default_version: #{e}"
end
```

#### Using the set_default_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> set_default_version_with_http_info(collection_id, type, name, set_default_version_request)

```ruby
begin
  # Set default pipeline version
  data, status_code, headers = api_instance.set_default_version_with_http_info(collection_id, type, name, set_default_version_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SajariAPIClient::ApiError => e
  puts "Error when calling PipelinesApi->set_default_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The collection that owns the pipeline to set the default version of, e.g. &#x60;my-collection&#x60;. |  |
| **type** | **String** | The type of the pipeline to set the default version of. |  |
| **name** | **String** | The name of the pipeline to set the default version of, e.g. &#x60;my-pipeline&#x60;. |  |
| **set_default_version_request** | [**SetDefaultVersionRequest**](SetDefaultVersionRequest.md) |  |  |

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

