# SajariAPIClient::QueryAggregateResultAnalysis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avg_length** | **Float** | Average number of items in an array field. | [optional] |
| **cardinality** | **Integer** | Cardinality is the number of different values in a field. | [optional] |
| **coverage** | **Integer** | Coverage is the number of records which have a value set. | [optional] |
| **max_length** | **Integer** | Maximum number of values in an array field. | [optional] |
| **min_length** | **Integer** | Minimum length of an array field. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::QueryAggregateResultAnalysis.new(
  avg_length: null,
  cardinality: null,
  coverage: null,
  max_length: null,
  min_length: null
)
```

