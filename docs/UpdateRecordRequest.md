# SajariAPIClient::UpdateRecordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | [**RecordKey**](RecordKey.md) |  |  |
| **record** | **Hash&lt;String, Object&gt;** | The record to update. |  |
| **update_mask** | **String** | The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  For each field that you want to update, provide a corresponding value in the record object containing the new value. |  |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::UpdateRecordRequest.new(
  key: null,
  record: null,
  update_mask: null
)
```

