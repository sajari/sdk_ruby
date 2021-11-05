# SajariAPIClient::UpsertRecordRequestPipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The record pipeline&#39;s name, e.g. &#x60;my-pipeline&#x60;. |  |
| **version** | **String** | The record pipeline&#39;s version, e.g. &#x60;42&#x60;.  If not provided the default version is used. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::UpsertRecordRequestPipeline.new(
  name: null,
  version: null
)
```

