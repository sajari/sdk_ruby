# SajariAPIClient::BatchUpdateRecordsResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | The index of the record in &#x60;requests&#x60; that this error corresponds to. | [optional] |
| **status** | [**Status**](Status.md) |  | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::BatchUpdateRecordsResponseError.new(
  index: null,
  status: null
)
```

