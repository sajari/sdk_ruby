# SajariAPIClient::ActivePromotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_exclusions** | [**Array&lt;PromotionExclusion&gt;**](PromotionExclusion.md) |  | [optional] |
| **active_pins** | [**Array&lt;PromotionPin&gt;**](PromotionPin.md) |  | [optional] |
| **promotion_id** | **String** |  | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::ActivePromotion.new(
  active_exclusions: null,
  active_pins: null,
  promotion_id: null
)
```

