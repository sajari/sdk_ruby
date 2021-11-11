# SajariAPIClient::ListCollectionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collections** | [**Array&lt;Collection&gt;**](Collection.md) | The collections from the specified account. | [optional] |
| **next_page_token** | **String** | A token, which can be sent as &#x60;page_token&#x60; to retrieve the next page.  If this field is omitted, there are no subsequent pages. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::ListCollectionsResponse.new(
  collections: null,
  next_page_token: null
)
```

