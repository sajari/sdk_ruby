# SajariAPIClient::QueryAggregateResultPercentile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**percentiles** | [**Array&lt;PercentileDataPoint&gt;**](PercentileDataPoint.md) | The percentile data points. | [optional] 
**cdf** | [**Array&lt;PercentileDataPoint&gt;**](PercentileDataPoint.md) | The cumulative distribution function (CDF) data points. | [optional] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::QueryAggregateResultPercentile.new(percentiles: null,
                                 cdf: null)
```


