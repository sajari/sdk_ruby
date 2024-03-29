# SajariAPIClient::Promotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **banners** | [**Array&lt;Banner&gt;**](Banner.md) | The banners that are injected into the result set when the promotion is triggered. | [optional] |
| **collection_id** | **String** | Output only. The ID of the collection that owns this promotion. | [optional][readonly] |
| **condition** | **String** | A condition expression applied to a search request that determines which searches the promotion is active for.  For example, to apply the promotion&#39;s pins and boosts whenever a user searches for &#39;shoes&#39; set condition to &#x60;q &#x3D; &#39;shoes&#39;&#x60;. |  |
| **create_time** | **Time** | Output only. Time the promotion was created. | [optional][readonly] |
| **disabled** | **Boolean** | If disabled, the promotion is never triggered. | [optional] |
| **display_name** | **String** | The promotion&#39;s display name. |  |
| **end_time** | **Time** | If specified, the promotion is considered disabled after this time. | [optional] |
| **exclusions** | [**Array&lt;PromotionExclusion&gt;**](PromotionExclusion.md) | The records to exclude from search results, if the promotion is enabled. | [optional] |
| **filter_boosts** | [**Array&lt;PromotionFilterBoost&gt;**](PromotionFilterBoost.md) | The filter boosts to apply to searches, if the promotion is enabled. | [optional] |
| **filter_conditions** | [**Array&lt;PromotionFilterCondition&gt;**](PromotionFilterCondition.md) | The conditions applied to the filters passed from the user. A query must match at least one of these in order to trigger the promotion. A filter condition is comprised of a set of filters of the form &#x60;field &#x3D; value&#x60; and matches a query if all of those filters are present in the query.  For example, a query with the filter &#x60;productType &#x3D; &#39;shirt&#39; AND size &#x3D; &#39;medium&#39;&#x60; triggers a promotion with the filter condition &#x60;productType &#x3D; &#39;shirt&#39;&#x60;, but not one with both &#x60;productType &#x3D; &#39;shirt&#39;, and &#x60;size &#x3D; &#39;small&#39;&#x60;. | [optional] |
| **id** | **String** | The promotion&#39;s ID. | [optional] |
| **pins** | [**Array&lt;PromotionPin&gt;**](PromotionPin.md) | The items to fix to specific positions in the search results. | [optional] |
| **range_boosts** | [**Array&lt;PromotionRangeBoost&gt;**](PromotionRangeBoost.md) | The range boosts to apply to searches, if the promotion is enabled. | [optional] |
| **start_time** | **Time** | If specified, the promotion is considered disabled before this time. | [optional] |
| **update_time** | **Time** | Output only. Time the promotion was last updated. | [optional][readonly] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::Promotion.new(
  banners: null,
  collection_id: null,
  condition: null,
  create_time: null,
  disabled: null,
  display_name: null,
  end_time: null,
  exclusions: null,
  filter_boosts: null,
  filter_conditions: null,
  id: null,
  pins: null,
  range_boosts: null,
  start_time: null,
  update_time: null
)
```

