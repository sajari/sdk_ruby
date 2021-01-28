# SajariAPIClient::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |
| **details** | [**Array&lt;ProtobufAny&gt;**](ProtobufAny.md) |  | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::Error.new(
  code: null,
  message: null,
  details: null
)
```

