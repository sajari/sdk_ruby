# SajariAPIClient::QueryCollectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline** | [**QueryCollectionRequestPipeline**](QueryCollectionRequestPipeline.md) |  | [optional] |
| **variables** | **Object** | The initial values for the variables the pipeline operates on and transforms throughout its steps.  A typical variable is &#x60;q&#x60; which is the query the user entered, for example:  &#x60;&#x60;&#x60;json { \&quot;q\&quot;: \&quot;search terms\&quot; } &#x60;&#x60;&#x60; |  |
| **tracking** | [**QueryCollectionRequestTracking**](QueryCollectionRequestTracking.md) |  | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::QueryCollectionRequest.new(
  pipeline: null,
  variables: null,
  tracking: null
)
```

