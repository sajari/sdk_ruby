# SajariAPIClient::GeneratePipelinesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **searchable_fields** | **Array&lt;String&gt;** | Prioritized list of fields to search. |  |
| **query_training_fields** | **Array&lt;String&gt;** | List of fields to train query suggestions from. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::GeneratePipelinesRequest.new(
  searchable_fields: null,
  query_training_fields: null
)
```

