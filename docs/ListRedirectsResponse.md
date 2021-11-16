# SajariAPIClient::ListRedirectsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | A token, which can be sent as &#x60;page_token&#x60; to retrieve the next page.  If this field is omitted, there are no subsequent pages. | [optional] |
| **redirects** | [**Array&lt;Redirect&gt;**](Redirect.md) | The redirects. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::ListRedirectsResponse.new(
  next_page_token: null,
  redirects: null
)
```

