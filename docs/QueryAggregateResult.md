# SajariAPIClient::QueryAggregateResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **analysis** | [**QueryAggregateResultAnalysis**](QueryAggregateResultAnalysis.md) |  | [optional] |
| **buckets** | [**QueryAggregateResultBuckets**](QueryAggregateResultBuckets.md) |  | [optional] |
| **count** | [**QueryAggregateResultCount**](QueryAggregateResultCount.md) |  | [optional] |
| **date** | [**QueryAggregateResultDate**](QueryAggregateResultDate.md) |  | [optional] |
| **metric** | [**QueryAggregateResultMetric**](QueryAggregateResultMetric.md) |  | [optional] |
| **percentile** | [**QueryAggregateResultPercentile**](QueryAggregateResultPercentile.md) |  | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::QueryAggregateResult.new(
  analysis: null,
  buckets: null,
  count: null,
  date: null,
  metric: null,
  percentile: null
)
```

