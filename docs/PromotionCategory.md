# SajariAPIClient::PromotionCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_field** | **String** | The logical field that specifies a record&#39;s category, e.g. \&quot;product_type\&quot;. | [optional] |
| **mapping_field** | **String** | The field that contains a human-readable rendering of a record&#39;s category, e.g. \&quot;product_type_name\&quot;. When creating promotions, this field&#39;s text value is displayed instead of the &#x60;id_field&#x60;. If &#x60;mapping_field&#x60; is not provided, the text value of the record&#39;s &#x60;id_field&#x60; is displayed. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::PromotionCategory.new(
  id_field: null,
  mapping_field: null
)
```

