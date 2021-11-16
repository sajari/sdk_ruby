# SajariAPIClient::PromotionPin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | [**RecordKey**](RecordKey.md) |  | [optional] |
| **position** | **Integer** | Position the record should occupy in search results. The top position is position 1.  Doesn&#39;t need to be contiguous with other pins, i.e. there can be gaps in the pinned set that are filled with organic results.  In the case where there are insufficient search results pinned items are collapsed. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::PromotionPin.new(
  key: null,
  position: null
)
```

