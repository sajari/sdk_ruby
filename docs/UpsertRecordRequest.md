# SajariAPIClient::UpsertRecordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline** | [**UpsertRecordRequestPipeline**](UpsertRecordRequestPipeline.md) |  | [optional] |
| **record** | **Object** | An object made up of field-value pairs that contains the record data. |  |
| **variables** | **Hash&lt;String, Object&gt;** | The initial values for the variables the pipeline operates on and transforms throughout its steps. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::UpsertRecordRequest.new(
  pipeline: null,
  record: null,
  variables: null
)
```

