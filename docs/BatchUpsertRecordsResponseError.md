# SajariAPIClient::BatchUpsertRecordsResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Index of the record in &#x60;records&#x60; that this error corresponds to. | [optional] |
| **status** | [**Status**](Status.md) |  | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::BatchUpsertRecordsResponseError.new(
  index: null,
  status: null
)
```

