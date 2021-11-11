# SajariAPIClient::SetDefaultPipelineRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline** | **String** | The name of the pipeline to use when not otherwise specified. |  |
| **type** | [**PipelineType**](PipelineType.md) |  | [default to &#39;TYPE_UNSPECIFIED&#39;] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::SetDefaultPipelineRequest.new(
  pipeline: null,
  type: null
)
```

