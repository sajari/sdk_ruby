=begin
#Sajari API

#Sajari is a smart, highly-configurable, real-time search service that enables thousands of businesses worldwide to provide amazing search experiences on their websites, stores, and applications.

The version of the OpenAPI document: v4
Contact: support@sajari.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SajariAPIClient::EventsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventsApi' do
  before do
    # run before each test
    @api_instance = SajariAPIClient::EventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(@api_instance).to be_instance_of(SajariAPIClient::EventsApi)
    end
  end

  # unit tests for send_event
  # Send event
  # Send an event to the ranking system after a user interacts with a search result.  When querying a collection, you can set the tracking type of the query request. When it is &#x60;CLICK&#x60; or &#x60;POS_NEG&#x60;, a token is generated for each result in the query response. You can use this token to provide feedback to the ranking system. Each time you want to record an event on a particular search result, use the send event call and provide:  - The &#x60;name&#x60; of the event, e.g. &#x60;click&#x60;, &#x60;purchase&#x60;. - The &#x60;token&#x60; from the search result. - The &#x60;weight&#x60; to assign to the event, e.g. &#x60;1&#x60;. - An object containing any additional &#x60;metadata&#x60;.  For example, to send an event where a customer purchased a product, use the following call:  &#x60;&#x60;&#x60;json {   \&quot;name\&quot;: \&quot;purchase\&quot;,   \&quot;token\&quot;: \&quot;eyJ...\&quot;,   \&quot;weight\&quot;: 1,   \&quot;metadata\&quot;: {     \&quot;discount\&quot;: 0.2,     \&quot;margin\&quot;: 30.0,     \&quot;customer_id\&quot;: \&quot;12345\&quot;,     \&quot;ui_test_segment\&quot;: \&quot;A\&quot;   } } &#x60;&#x60;&#x60;
  # @param send_event_request 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'send_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
