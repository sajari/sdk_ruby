# SajariAPIClient::QueryAggregateResultAnalysis

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coverage** | **Integer** | Coverage is the number of records which have a value set. | [optional] 
**cardinality** | **Integer** | Cardinality is the number of different values in a field. | [optional] 
**min_length** | **Integer** | Minimum length of an array field. | [optional] 
**max_length** | **Integer** | Maximum number of values in an array field. | [optional] 
**avg_length** | **Float** | Average number of items in an array field. | [optional] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::QueryAggregateResultAnalysis.new(coverage: null,
                                 cardinality: null,
                                 min_length: null,
                                 max_length: null,
                                 avg_length: null)
```


