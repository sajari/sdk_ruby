# SajariAPIClient::Collection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Output only. The ID of the account that owns this collection. | [optional][readonly] |
| **authorized_query_domains** | **Array&lt;String&gt;** | The list of authorized query domains for the collection.  Client-side / browser requests to the [QueryCollection](/api#operation/QueryCollection) call can be made by any authorized query domain or any of its subdomains. This allows your interface to make search requests without having to provide an API key in the client-side request. | [optional] |
| **create_time** | **Time** | Output only. Time the collection was created. | [optional][readonly] |
| **display_name** | **String** | The collection&#39;s display name. You can change this at any time. |  |
| **id** | **String** | Output only. The collection&#39;s ID. | [optional][readonly] |

## Example

```ruby
require 'sdk-ruby'

instance = SajariAPIClient::Collection.new(
  account_id: null,
  authorized_query_domains: null,
  create_time: null,
  display_name: null,
  id: null
)
```

