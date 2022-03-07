# SajariAPIClient::BatchUpdateRecordsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;BatchUpdateRecordsResponseError&gt;**](BatchUpdateRecordsResponseError.md) | The errors that occurred. | [optional] |
| **records** | [**Array&lt;BatchUpdateRecordsResponseRecord&gt;**](BatchUpdateRecordsResponseRecord.md) | A list of updated records. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::BatchUpdateRecordsResponse.new(
  errors: null,
  records: null
)
```

