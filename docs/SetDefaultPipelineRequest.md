# SajariAPIClient::SetDefaultPipelineRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PipelineType**](PipelineType.md) |  | [default to &#39;TYPE_UNSPECIFIED&#39;]
**pipeline** | **String** | The name of the pipeline to use when not otherwise specified. | 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::SetDefaultPipelineRequest.new(type: null,
                                 pipeline: null)
```


