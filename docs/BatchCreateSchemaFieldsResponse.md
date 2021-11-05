# SajariAPIClient::BatchCreateSchemaFieldsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;BatchCreateSchemaFieldsResponseError&gt;**](BatchCreateSchemaFieldsResponseError.md) | Errors that occurred. | [optional] |
| **fields** | [**Array&lt;SchemaField&gt;**](SchemaField.md) | Schema fields created. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::BatchCreateSchemaFieldsResponse.new(
  errors: null,
  fields: null
)
```

