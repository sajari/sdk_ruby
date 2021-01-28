# SajariAPIClient::SchemaField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the field. |  |
| **description** | **String** | The description of the field. | [optional] |
| **type** | [**SchemaFieldType**](SchemaFieldType.md) |  | [default to &#39;TYPE_UNSPECIFIED&#39;] |
| **mode** | [**SchemaFieldMode**](SchemaFieldMode.md) |  | [default to &#39;MODE_UNSPECIFIED&#39;] |
| **array** | **Boolean** | Array indicates if the field is an array of values.  For example, if &#x60;type&#x60; is string and &#x60;array&#x60; is &#x60;true&#x60;, then the field is an array of strings. | [optional] |
| **array_length** | **Integer** | The required length of the array, if &#x60;array&#x60; is &#x60;true&#x60;.  This allows you to enforce that an array contains an exact number of items.  For example, to store a 2x2 vector, you could set &#x60;type&#x60; to float, &#x60;array&#x60; to &#x60;true&#x60; and &#x60;array_length&#x60; to &#x60;4&#x60;. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::SchemaField.new(
  name: null,
  description: null,
  type: null,
  mode: null,
  array: null,
  array_length: null
)
```

