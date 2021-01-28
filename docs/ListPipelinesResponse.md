# SajariAPIClient::ListPipelinesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipelines** | [**Array&lt;Pipeline&gt;**](Pipeline.md) | The pipelines from the specified collection. | [optional] |
| **next_page_token** | **String** | A token, which can be sent as &#x60;page_token&#x60; to retrieve the next page.  If this field is omitted, there are no subsequent pages. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::ListPipelinesResponse.new(
  pipelines: null,
  next_page_token: null
)
```

