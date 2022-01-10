# SajariAPIClient::BatchUpdateRecordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requests** | [**Array&lt;UpdateRecordRequest&gt;**](UpdateRecordRequest.md) | The list of requests containing the records to be updated.  A maximum of 200 records can be updated in a batch. |  |
| **update_mask** | **String** | The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  For each field that you want to update, provide a corresponding value in each record object, within the requests list, containing the new value.  If provided, and you also provide an update mask in any child request, the values must match. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::BatchUpdateRecordsRequest.new(
  requests: null,
  update_mask: null
)
```

