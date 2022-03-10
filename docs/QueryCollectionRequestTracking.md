# SajariAPIClient::QueryCollectionRequestTracking

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Hash&lt;String, String&gt;** | A set of custom values to be included in tracking data. | [optional] |
| **field** | **String** | The tracking field used to identify records in the collection.  Must be unique schema field. | [optional] |
| **query_id** | **String** | The query ID of the query. If this is empty, then one is generated. | [optional] |
| **sequence** | **Integer** | The sequence number of query. | [optional] |
| **type** | [**QueryCollectionRequestTrackingType**](QueryCollectionRequestTrackingType.md) |  | [optional][default to &#39;TYPE_UNSPECIFIED&#39;] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::QueryCollectionRequestTracking.new(
  data: null,
  field: null,
  query_id: null,
  sequence: null,
  type: null
)
```

