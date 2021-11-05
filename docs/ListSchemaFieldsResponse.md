# SajariAPIClient::ListSchemaFieldsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | A token, which can be sent as &#x60;page_token&#x60; to retrieve the next page.  If this field is omitted, there are no subsequent pages. | [optional] |
| **schema_fields** | [**Array&lt;SchemaField&gt;**](SchemaField.md) | The schema fields. | [optional] |
| **total_size** | **Integer** | Maximum number of fields to return. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::ListSchemaFieldsResponse.new(
  next_page_token: null,
  schema_fields: null,
  total_size: null
)
```

