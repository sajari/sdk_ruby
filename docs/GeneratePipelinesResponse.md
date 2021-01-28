# SajariAPIClient::GeneratePipelinesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_pipeline** | [**Pipeline**](Pipeline.md) |  | [optional] |
| **query_pipeline** | [**Pipeline**](Pipeline.md) |  | [optional] |
| **autocomplete_pipeline** | [**Pipeline**](Pipeline.md) |  | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::GeneratePipelinesResponse.new(
  record_pipeline: null,
  query_pipeline: null,
  autocomplete_pipeline: null
)
```

