# SajariAPIClient::PipelineStepParamBinding

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bind** | **String** | Bind the step parameter to a pipeline variable. | [optional] 
**description** | **String** | Set the description of the step parameter. | [optional] 
**default_value** | **String** | Set a default value for the step parameter.  This allows you to set a default value for the step parameter when it is not bound to a pipeline variable. | [optional] 
**constant** | **String** | Bind the step parameter to a constant value. | [optional] 

## Code Sample

```ruby
require 'SajariAPIClient'

instance = SajariAPIClient::PipelineStepParamBinding.new(bind: null,
                                 description: null,
                                 default_value: null,
                                 constant: null)
```


