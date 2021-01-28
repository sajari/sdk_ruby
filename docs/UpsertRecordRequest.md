# SajariAPIClient::UpsertRecordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline** | [**UpsertRecordRequestPipeline**](UpsertRecordRequestPipeline.md) |  | [optional] |
| **record** | **Object** | An object made up of field-value pairs that contains the record data. |  |
| **variables** | **Object** | The initial values for the variables the pipeline operates on and transforms throughout its steps. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::UpsertRecordRequest.new(
  pipeline: null,
  record: null,
  variables: null
)
```

