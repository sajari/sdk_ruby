# SajariAPIClient::UpsertRecordResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | [**RecordKey**](RecordKey.md) |  | [optional] |
| **variables** | **Hash&lt;String, Object&gt;** | The modified variables returned by the pipeline after it has finished processing. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::UpsertRecordResponse.new(
  key: null,
  variables: null
)
```

