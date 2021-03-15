# SajariAPIClient::QueryResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**record** | **Object** | An object made up of field-value pairs that contains the record data. | [optional] 
**score** | **Float** | The normalized score attributed to this record. Combines the index score and feature score. | [optional] 
**index_score** | **Float** | Index score. | [optional] 
**token** | [**QueryResultToken**](QueryResultToken.md) |  | [optional] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::QueryResult.new(record: null,
                                 score: null,
                                 index_score: null,
                                 token: null)
```


