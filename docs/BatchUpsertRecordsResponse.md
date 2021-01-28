# SajariAPIClient::BatchUpsertRecordsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | [**Array&lt;BatchUpsertRecordsResponseKey&gt;**](BatchUpsertRecordsResponseKey.md) | A list of keys of the records that were inserted.  If a record was inserted, keys contains an entry containing the index of the inserted record from &#x60;records&#x60; and the key. You can use the key if you need to retrieve or delete the record.  If a record was updated, keys contains no such entry for the updated record. | [optional] |
| **variables** | [**Array&lt;BatchUpsertRecordsResponseVariables&gt;**](BatchUpsertRecordsResponseVariables.md) | A list of modified variables returned by the pipeline after it has finished processing each record. | [optional] |
| **errors** | [**Array&lt;BatchUpsertRecordsResponseError&gt;**](BatchUpsertRecordsResponseError.md) | Errors that occurred. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::BatchUpsertRecordsResponse.new(
  keys: null,
  variables: null,
  errors: null
)
```

