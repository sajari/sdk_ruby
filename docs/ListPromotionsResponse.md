# SajariAPIClient::ListPromotionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | A token, which can be sent as &#x60;page_token&#x60; to retrieve the next page.  If this field is omitted, there are no subsequent pages. | [optional] |
| **promotions** | [**Array&lt;Promotion&gt;**](Promotion.md) | The promotions. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::ListPromotionsResponse.new(
  next_page_token: null,
  promotions: null
)
```

