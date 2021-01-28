# SajariAPIClient::BatchCreateSchemaFieldsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Array&lt;SchemaField&gt;**](SchemaField.md) | Schema fields created. | [optional] |
| **errors** | [**Array&lt;BatchCreateSchemaFieldsResponseError&gt;**](BatchCreateSchemaFieldsResponseError.md) | Errors that occurred. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::BatchCreateSchemaFieldsResponse.new(
  fields: null,
  errors: null
)
```

