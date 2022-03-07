# SajariAPIClient::RedirectResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The redirect&#39;s ID. | [optional] |
| **target** | **String** | The target to redirect the user to. | [optional] |
| **token** | **String** | A redirect token.  Call SendEvent with this token to indicate that a redirect has been performed. | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::RedirectResult.new(
  id: null,
  target: null,
  token: null
)
```

