# SajariAPIClient::PromotionFilterCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **Array&lt;String&gt;** | A filter of the form &#x60;field &#x3D; &#39;value&#39;&#x60;. All of these filters must be present in a query&#39;s filter in order for the promotion to be considered active. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::PromotionFilterCondition.new(
  filter: null
)
```

