# SajariAPIClient::QueryAggregateResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric** | [**QueryAggregateResultMetric**](QueryAggregateResultMetric.md) |  | [optional] 
**count** | [**QueryAggregateResultCount**](QueryAggregateResultCount.md) |  | [optional] 
**buckets** | [**QueryAggregateResultBuckets**](QueryAggregateResultBuckets.md) |  | [optional] 
**date** | [**QueryAggregateResultDate**](QueryAggregateResultDate.md) |  | [optional] 
**analysis** | [**QueryAggregateResultAnalysis**](QueryAggregateResultAnalysis.md) |  | [optional] 
**percentile** | [**QueryAggregateResultPercentile**](QueryAggregateResultPercentile.md) |  | [optional] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::QueryAggregateResult.new(metric: null,
                                 count: null,
                                 buckets: null,
                                 date: null,
                                 analysis: null,
                                 percentile: null)
```


