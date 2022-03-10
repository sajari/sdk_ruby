# SajariAPIClient::GeneratePipelinesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query_training_fields** | **Array&lt;String&gt;** | A list of fields to train query suggestions from. | [optional] |
| **searchable_fields** | **Array&lt;String&gt;** | A prioritized list of fields to search. |  |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::GeneratePipelinesRequest.new(
  query_training_fields: null,
  searchable_fields: null
)
```

