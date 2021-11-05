# SajariAPIClient::BatchUpsertRecordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline** | [**BatchUpsertRecordsRequestPipeline**](BatchUpsertRecordsRequestPipeline.md) |  | [optional] |
| **records** | **Array&lt;Object&gt;** | A list of records to upsert.  A maximum of 200 records can be upsert in a batch. |  |
| **variables** | **Hash&lt;String, Object&gt;** | The initial values for the variables the pipeline operates on and transforms throughout its steps. | [optional] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::BatchUpsertRecordsRequest.new(
  pipeline: null,
  records: null,
  variables: null
)
```

