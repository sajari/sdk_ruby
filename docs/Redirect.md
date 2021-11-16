# SajariAPIClient::Redirect

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Output only. The ID of the collection that owns this redirect. | [optional][readonly] |
| **condition** | **String** | Condition expression applied to a search request that determines whether a search is redirected.  For example, to redirect if the user&#39;s query is &#x60;apples&#x60;, set condition to &#x60;q &#x3D; &#39;apples&#39;&#x60;. |  |
| **create_time** | **Time** | Output only. Time the redirect was created. | [optional][readonly] |
| **disabled** | **Boolean** | If disabled, the redirect will never be triggered. | [optional] |
| **id** | **String** | Output only. The redirect&#39;s ID. | [optional][readonly] |
| **target** | **String** | Target to redirect the user to if their query matches &#x60;condition&#x60;.  For searches performed in a browser, target is usually a URL but it can be any value that your integration can interpret as a redirect.  For example, for URLs that you need to resolve at runtime, target might be a URL template string. For apps, target might be a unique identifier used to send the user to the correct view. |  |
| **update_time** | **Time** | Output only. Time the redirect was last updated. | [optional][readonly] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::Redirect.new(
  collection_id: null,
  condition: null,
  create_time: null,
  disabled: null,
  id: null,
  target: null,
  update_time: null
)
```

