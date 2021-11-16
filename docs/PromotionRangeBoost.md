# SajariAPIClient::PromotionRangeBoost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **boost** | **Float** | Number that determines the size of the boost that is applied to matching records. Must be greater than or equal to 0 and less than or equal to 1. | [optional] |
| **_end** | **Float** | The end value to apply 1 boost to. | [optional] |
| **field** | **String** | The field to apply the boost to. | [optional] |
| **null_boost** | **Float** | The boost given to null/empty values. Must be greater than or equal to 0 and less than or equal to 1. The default value is 0. | [optional] |
| **start** | **Float** | The start value to apply 0 boost to. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::PromotionRangeBoost.new(
  boost: null,
  _end: null,
  field: null,
  null_boost: null,
  start: null
)
```

