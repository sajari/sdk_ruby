# SajariAPIClient::QueryAggregateResultPercentile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cdf** | [**Array&lt;PercentileDataPoint&gt;**](PercentileDataPoint.md) | The cumulative distribution function (CDF) data points. | [optional] |
| **percentiles** | [**Array&lt;PercentileDataPoint&gt;**](PercentileDataPoint.md) | The percentile data points. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::QueryAggregateResultPercentile.new(
  cdf: null,
  percentiles: null
)
```

