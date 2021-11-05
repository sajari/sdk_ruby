# SajariAPIClient::QueryCollectionRequestTracking

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Hash&lt;String, String&gt;** | Custom values to be included in tracking data. | [optional] |
| **field** | **String** | Tracking field used to identify records in the collection.  Must be unique schema field. | [optional] |
| **query_id** | **String** | Query ID of the query. If this is empty, then one is generated. | [optional] |
| **sequence** | **Integer** | Sequence number of query. | [optional] |
| **type** | [**QueryCollectionRequestTrackingType**](QueryCollectionRequestTrackingType.md) |  | [optional][default to &#39;TYPE_UNSPECIFIED&#39;] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::QueryCollectionRequestTracking.new(
  data: null,
  field: null,
  query_id: null,
  sequence: null,
  type: null
)
```

