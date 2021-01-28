# SajariAPIClient::Collection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Output only. The collection&#39;s ID. | [optional][readonly] |
| **account_id** | **String** | Output only. The ID of the account that owns this collection. | [optional][readonly] |
| **create_time** | **Time** | Output only. Creation time of the collection. | [optional][readonly] |
| **display_name** | **String** | The collection&#39;s display name. You can change this at any time. |  |
| **authorized_query_domains** | **Array&lt;String&gt;** | The list of authorized query domains for the collection.  Client-side / browser requests to the [QueryCollection](/api#operation/QueryCollection) call can be made by any authorized query domain or any of its subdomains. This allows your interface to make search requests without having to provide an API key in the client-side request. | [optional] |

## Code Sample

```ruby
require 'sajari_client'

instance = SajariAPIClient::Collection.new(
  id: null,
  account_id: null,
  create_time: null,
  display_name: null,
  authorized_query_domains: null
)
```

