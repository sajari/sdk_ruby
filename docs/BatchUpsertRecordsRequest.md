# SajariAPIClient::BatchUpsertRecordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline** | [**BatchUpsertRecordsRequestPipeline**](BatchUpsertRecordsRequestPipeline.md) |  | [optional] |
| **records** | **Array&lt;Object&gt;** | A list of records to upsert. |  |
| **variables** | **Object** | The initial values for the variables the pipeline operates on and transforms throughout its steps. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::BatchUpsertRecordsRequest.new(
  pipeline: null,
  records: null,
  variables: null
)
```

