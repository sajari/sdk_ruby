# SajariAPIClient::QueryResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index_score** | **Float** | Index score. | [optional] |
| **record** | **Object** | An object made up of field-value pairs that contains the record data. | [optional] |
| **score** | **Float** | The normalized score attributed to this record. Combines the index score and feature score. | [optional] |
| **token** | [**QueryResultToken**](QueryResultToken.md) |  | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::QueryResult.new(
  index_score: null,
  record: null,
  score: null,
  token: null
)
```

