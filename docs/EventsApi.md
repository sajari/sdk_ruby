# SajariAPIClient::EventsApi

All URIs are relative to *https://api-gateway.sajari.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_event**](EventsApi.md#send_event) | **POST** /v4/events:sendEvent | Send event



## send_event

> Object send_event(send_event_request)

Send event

Send an event to the ranking system after a user interacts with a search result.  When querying a collection, you can set the tracking type of the query request. When it is `CLICK` or `POS_NEG`, a token is generated for each result in the query response. You can use this token to provide feedback to the ranking system. Each time you want to record an event on a particular search result, use the send event call and provide:  - The `name` of the event, e.g. `click`, `purchase`. - The `token` from the search result. - The `weight` to assign to the event, e.g. `1`. - An object containing any additional `metadata`.  For example, to send an event where a customer purchased a product, use the following call:  ```json {   \"name\": \"purchase\",   \"token\": \"eyJ...\",   \"weight\": 1,   \"metadata\": {     \"discount\": 0.2,     \"margin\": 30.0,     \"customer_id\": \"12345\",     \"ui_test_segment\": \"A\"   } } ```

### Example

```ruby
# load the gem
require 'sdk-ruby'
# setup authorization
SajariAPIClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SajariAPIClient::EventsApi.new
send_event_request = SajariAPIClient::SendEventRequest.new # SendEventRequest | 

begin
  #Send event
  result = api_instance.send_event(send_event_request)
  p result
rescue SajariAPIClient::ApiError => e
  puts "Exception when calling EventsApi->send_event: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_event_request** | [**SendEventRequest**](SendEventRequest.md)|  | 

### Return type

**Object**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

