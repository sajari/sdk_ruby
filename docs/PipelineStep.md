# SajariAPIClient::PipelineStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the step template. |  |
| **title** | **String** | Title for the step. Overrides the default title. | [optional] |
| **description** | **String** | Description for the step. Overrides the default description. | [optional] |
| **params** | [**Hash&lt;String, PipelineStepParamBinding&gt;**](PipelineStepParamBinding.md) | Bindings for the step parameters. | [optional] |
| **condition** | **String** | Condition expression to determine if the step should be run.  This is a filter expression much like the query filter expression, but it acts upon the pipeline variables.  For example, to only run the step if the pipeline &#x60;q&#x60; variable is not empty, set this to &#x60;q !&#x3D; &#39;&#39;&#x60;. | [optional] |
| **annotations** | **Array&lt;String&gt;** | Annotations added to the request when the step is run. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::PipelineStep.new(
  id: null,
  title: null,
  description: null,
  params: null,
  condition: null,
  annotations: null
)
```

