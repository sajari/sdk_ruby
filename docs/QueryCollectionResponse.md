# SajariAPIClient::QueryCollectionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pipeline** | [**QueryCollectionResponsePipeline**](QueryCollectionResponsePipeline.md) |  | [optional] 
**variables** | **Object** | The modified variables returned by the pipeline after it has finished processing. | [optional] 
**results** | [**Array&lt;QueryResult&gt;**](QueryResult.md) | The results returned by the query. | [optional] 
**total_size** | **String** | The total number of results that match the query. | [optional] 
**processing_duration** | **String** | The total time taken to perform the query. | [optional] 
**aggregates** | [**Hash&lt;String, QueryAggregateResult&gt;**](QueryAggregateResult.md) | The aggregates returned by the query. | [optional] 
**aggregate_filters** | [**Hash&lt;String, QueryAggregateResult&gt;**](QueryAggregateResult.md) | The aggregates run with filters. | [optional] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::QueryCollectionResponse.new(pipeline: null,
                                 variables: null,
                                 results: null,
                                 total_size: null,
                                 processing_duration: null,
                                 aggregates: null,
                                 aggregate_filters: null)
```


