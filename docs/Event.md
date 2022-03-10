# SajariAPIClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **banner_id** | **String** | The identifier of the promotion banner the event is about. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | An object made up of field-value pairs that contains additional metadata to record with the event. | [optional] |
| **query_id** | **String** | The query identifier. |  |
| **redirect_id** | **String** | The identifier of the redirect the event is about. | [optional] |
| **result_id** | **String** | The identifier of the result the event is about. | [optional] |
| **type** | **String** | The type of event, e.g. &#x60;click&#x60;, &#x60;purchase&#x60;, &#x60;add_to_cart&#x60;. |  |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::Event.new(
  banner_id: null,
  metadata: null,
  query_id: null,
  redirect_id: null,
  result_id: null,
  type: null
)
```

