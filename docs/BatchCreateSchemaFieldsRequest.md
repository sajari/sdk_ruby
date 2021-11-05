# SajariAPIClient::BatchCreateSchemaFieldsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Array&lt;SchemaField&gt;**](SchemaField.md) | A list of fields to create.  A maximum of 1000 fields can be created in a batch. |  |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::BatchCreateSchemaFieldsRequest.new(
  fields: null
)
```

