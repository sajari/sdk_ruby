# SajariAPIClient::QueryResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **banner** | [**Banner**](Banner.md) |  | [optional] |
| **feature_score** | **Float** | The feature score of the result.  This is a value between 0 and 1 representing the business-specific ranking of the result as determined by the ranking adjustments. See [Ranking adjustments](https://docs.search.io/documentation/fundamentals/search-settings/ranking-adjustments) for more information. | [optional] |
| **index_score** | **Float** | The index score of the result.  This is a value between 0 and 1 representing the relevance of the result using traditional keyword search. The higher the score the more relevant the result is. | [optional] |
| **neural_score** | **Float** | The neural score of the result.  This is a value between 0 and 1 representing the relevance of the result using Neuralsearch®, using AI-based search. | [optional] |
| **record** | **Object** | An object made up of field-value pairs that contains the record data. | [optional] |
| **relevance_score** | **Float** | The relevance score of the result.  This is the best of &#x60;index_score&#x60; and &#x60;neural_score&#x60; with any index boosts applied on top. | [optional] |
| **score** | **Float** | The overall relevance of the result.  This is a value between 0 and 1 that combines the index, neural and feature scores. The higher the score the more relevant the result is. | [optional] |
| **token** | [**QueryResultToken**](QueryResultToken.md) |  | [optional] |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::QueryResult.new(
  banner: null,
  feature_score: null,
  index_score: null,
  neural_score: null,
  record: null,
  relevance_score: null,
  score: null,
  token: null
)
```

