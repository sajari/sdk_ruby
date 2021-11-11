# SajariAPIClient::QueryCollectionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregate_filters** | [**Hash&lt;String, QueryAggregateResult&gt;**](QueryAggregateResult.md) | The aggregates run with filters. | [optional] |
| **aggregates** | [**Hash&lt;String, QueryAggregateResult&gt;**](QueryAggregateResult.md) | The aggregates returned by the query. | [optional] |
| **pipeline** | [**QueryCollectionResponsePipeline**](QueryCollectionResponsePipeline.md) |  | [optional] |
| **processing_duration** | **String** | The total time taken to perform the query. | [optional] |
| **results** | [**Array&lt;QueryResult&gt;**](QueryResult.md) | The results returned by the query. | [optional] |
| **total_size** | **String** | The total number of results that match the query. | [optional] |
| **variables** | **Hash&lt;String, Object&gt;** | The modified variables returned by the pipeline after it has finished processing. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::QueryCollectionResponse.new(
  aggregate_filters: null,
  aggregates: null,
  pipeline: null,
  processing_duration: null,
  results: null,
  total_size: null,
  variables: null
)
```

