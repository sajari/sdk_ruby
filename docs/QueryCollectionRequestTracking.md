# SajariAPIClient::QueryCollectionRequestTracking

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**QueryCollectionRequestTrackingType**](QueryCollectionRequestTrackingType.md) |  | [optional] [default to &#39;TYPE_UNSPECIFIED&#39;]
**query_id** | **String** | Query ID of the query. If this is empty, then one is generated. | [optional] 
**sequence** | **Integer** | Sequence number of query. | [optional] 
**field** | **String** | Tracking field used to identify records in the collection.  Must be unique schema field. | [optional] 
**data** | **Hash&lt;String, String&gt;** | Custom values to be included in tracking data. | [optional] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::QueryCollectionRequestTracking.new(type: null,
                                 query_id: null,
                                 sequence: null,
                                 field: null,
                                 data: null)
```


