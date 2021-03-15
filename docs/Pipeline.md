# SajariAPIClient::Pipeline

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**create_time** | **Time** | Output only. Creation time of the pipeline. | [optional] [readonly] 
**type** | [**PipelineType**](PipelineType.md) |  | [default to &#39;TYPE_UNSPECIFIED&#39;]
**name** | **String** | The pipeline&#39;s name.  Must start with an alphanumeric character followed by one or more alphanumeric, &#x60;_&#x60;, &#x60;-&#x60; or &#x60;.&#x60; characters. Strictly speaking, it must match the regular expression: &#x60;^[a-zA-Z0-9][a-zA-Z0-9_\\-\\.]+$&#x60;. | 
**version** | **String** | The pipeline&#39;s version.  Must start with an alphanumeric character followed by one or more alphanumeric, &#x60;_&#x60;, &#x60;-&#x60; or &#x60;.&#x60; characters. Strictly speaking, it must match the regular expression: &#x60;^[a-zA-Z0-9][a-zA-Z0-9_\\-\\.]+$&#x60;. | 
**description** | **String** | Description of the pipeline. | [optional] 
**pre_steps** | [**Array&lt;PipelineStep&gt;**](PipelineStep.md) | Pre-steps are run before an indexing operation or query request is sent to the search index. | [optional] 
**post_steps** | [**Array&lt;PipelineStep&gt;**](PipelineStep.md) | Post-steps are run after an indexing operation or query request has been sent to the search index.  For indexing operations, the post-steps only run when creating new records. They do not run when updating records.  For querying, the post-steps have access to the result-set. This makes it possible to act on the results before sending them back to the caller. | [optional] 
**collection_default** | **Boolean** | Output only. Indicates if the pipeline is the collection default pipeline. | [optional] [readonly] 
**default_version** | **Boolean** | Output only. Indicates if the pipeline is the default version. | [optional] [readonly] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::Pipeline.new(create_time: null,
                                 type: null,
                                 name: null,
                                 version: null,
                                 description: null,
                                 pre_steps: null,
                                 post_steps: null,
                                 collection_default: null,
                                 default_version: null)
```


