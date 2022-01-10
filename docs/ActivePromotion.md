# SajariAPIClient::ActivePromotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_exclusions** | [**Array&lt;PromotionExclusion&gt;**](PromotionExclusion.md) | The records that are excluded from the result set by the active promotion. | [optional] |
| **active_pins** | [**Array&lt;PromotionPin&gt;**](PromotionPin.md) | The pins that belong to the active promotion. Note that the positions in these pins are the positions specified at pin creation time, which is not necessarily the position that a pin ends up in. For example, if a pin is created at position 2, but the query that the pin is active in has zero results, the pinned result actually appears in position 1. | [optional] |
| **promotion_id** | **String** | The ID of the active promotion. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::ActivePromotion.new(
  active_exclusions: null,
  active_pins: null,
  promotion_id: null
)
```

