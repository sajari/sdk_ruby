# SajariAPIClient::SendEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **Hash&lt;String, Object&gt;** | An object made up of field-value pairs that contains additional metadata to record with the event.  Every value in the object must be one of the following primitive types:  - boolean - number - string | [optional] |
| **name** | **String** | The name of event, e.g. &#x60;click&#x60;, &#x60;purchase&#x60;. |  |
| **token** | **String** | The token corresponding to the search result that was interacted with, e.g. &#x60;eyJ...&#x60;. |  |
| **weight** | **Integer** | The weight assigned to the event.  Generally a sensible weight is 1. If you want to weight an event in a certain way you can use a value other than 1. For example, if you want to capture profit in an event, you could set the weight to a value that represents the profit. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::SendEventRequest.new(
  metadata: null,
  name: null,
  token: null,
  weight: null
)
```

