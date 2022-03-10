# SajariAPIClient::ExperimentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_pipeline** | [**Pipeline**](Pipeline.md) |  | [optional] |
| **pipeline** | [**ExperimentRequestPipeline**](ExperimentRequestPipeline.md) |  | [optional] |
| **promotions** | [**Array&lt;Promotion&gt;**](Promotion.md) | The promotions to consider active when running the search.  Provided promotions override existing promotions with the same ID. | [optional] |
| **variables** | **Hash&lt;String, Object&gt;** | The initial values for the variables the pipeline operates on and transforms throughout its steps.  The most important variable is &#x60;q&#x60; which is the query the user entered, for example:  &#x60;&#x60;&#x60;json { \&quot;q\&quot;: \&quot;search terms\&quot; } &#x60;&#x60;&#x60;  To paginate through results, set the variables &#x60;page&#x60; and &#x60;resultsPerPage&#x60;, for example:  &#x60;&#x60;&#x60;json { \&quot;q\&quot;: \&quot;search terms\&quot;, \&quot;page\&quot;: 5, \&quot;resultsPerPage\&quot;: 20 } &#x60;&#x60;&#x60;  To sort results, set the variable &#x60;sort&#x60; to the name of one of your collection&#39;s schema fields, for example:  &#x60;&#x60;&#x60;json { \&quot;q\&quot;: \&quot;search terms\&quot;, \&quot;sort\&quot;: \&quot;name\&quot; } &#x60;&#x60;&#x60;  To sort in reverse, prefix the schema field with a minus sign &#x60;-&#x60;, for example:  &#x60;&#x60;&#x60;json { \&quot;q\&quot;: \&quot;search terms\&quot;, \&quot;sort\&quot;: \&quot;-name\&quot; } &#x60;&#x60;&#x60; |  |

## Example

```ruby
require 'sdk_ruby'

instance = SajariAPIClient::ExperimentRequest.new(
  custom_pipeline: null,
  pipeline: null,
  promotions: null,
  variables: null
)
```

