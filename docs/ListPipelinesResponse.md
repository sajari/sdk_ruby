# SajariAPIClient::ListPipelinesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | A token, which can be sent as &#x60;page_token&#x60; to retrieve the next page.  If this field is omitted, there are no subsequent pages. | [optional] |
| **pipelines** | [**Array&lt;Pipeline&gt;**](Pipeline.md) | The pipelines from the specified collection. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::ListPipelinesResponse.new(
  next_page_token: null,
  pipelines: null
)
```

