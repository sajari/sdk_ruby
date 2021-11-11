# SajariAPIClient::GeneratePipelinesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query_training_fields** | **Array&lt;String&gt;** | List of fields to train query suggestions from. | [optional] |
| **searchable_fields** | **Array&lt;String&gt;** | Prioritized list of fields to search. |  |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::GeneratePipelinesRequest.new(
  query_training_fields: null,
  searchable_fields: null
)
```

