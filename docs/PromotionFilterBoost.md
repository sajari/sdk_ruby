# SajariAPIClient::PromotionFilterBoost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **boost** | **Float** | Number that determines the size of the boost that is applied to matching records.  Must be greater than or equal to 0 and less than or equal to 1. | [optional] |
| **filter** | **String** | Filter expression that applies a relevance boost to records matching this filter.  This is a filter expression much like the query filter expression. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::PromotionFilterBoost.new(
  boost: null,
  filter: null
)
```

