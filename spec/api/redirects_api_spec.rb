=begin
#Sajari API

#Sajari is a smart, highly-configurable, real-time search service that enables thousands of businesses worldwide to provide amazing search experiences on their websites, stores, and applications.

The version of the OpenAPI document: v4
Contact: support@sajari.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SajariAPIClient::RedirectsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RedirectsApi' do
  before do
    # run before each test
    @api_instance = SajariAPIClient::RedirectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RedirectsApi' do
    it 'should create an instance of RedirectsApi' do
      expect(@api_instance).to be_instance_of(SajariAPIClient::RedirectsApi)
    end
  end

  # unit tests for create_redirect
  # Create redirect
  # Create a new redirect in a collection.
  # @param collection_id The collection to create a redirect in, e.g. &#x60;my-collection&#x60;.
  # @param redirect The redirect to create.
  # @param [Hash] opts the optional parameters
  # @return [Redirect]
  describe 'create_redirect test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_redirect
  # Delete redirect
  # Delete a redirect and all of its associated data.  &gt; Note: This operation cannot be reversed.
  # @param collection_id The collection the redirect belongs to, e.g. &#x60;my-collection&#x60;.
  # @param redirect_id The redirect to delete, e.g. &#x60;1234&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_redirect test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_redirect
  # Get redirect
  # Retrieve the details of a redirect.
  # @param collection_id The collection that owns the redirect, e.g. &#x60;my-collection&#x60;.
  # @param redirect_id The redirect to retrieve, e.g. &#x60;1234&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [Redirect]
  describe 'get_redirect test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_redirects
  # List redirects
  # Retrieve a list of redirects in a collection.
  # @param collection_id The collection that owns this set of redirects, e.g. &#x60;my-collection&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The maximum number of redirects to return. The service may return fewer than this value.  If unspecified, at most 50 redirects are returned.  The maximum value is 1000; values above 1000 are coerced to 1000.
  # @option opts [String] :page_token A page token, received from a previous [ListRedirects](/api#operation/ListRedirects) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListRedirects](/api#operation/ListRedirects) must match the call that provided the page token.
  # @return [ListRedirectsResponse]
  describe 'list_redirects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_redirect
  # Update redirect
  # Update the details of a redirect.  Pass each field that you want to update in the request body. Also specify the name of each field that you want to update in the &#x60;update_mask&#x60; in the request URL query string. Separate multiple fields with a comma. Fields included in the request body, but not included in the field mask are not updated.  For example, to update the &#x60;condition&#x60; field, make a &#x60;PATCH&#x60; request to the URL:  &#x60;&#x60;&#x60; /v4/collections/{collection_id}/redirects/{redirect_id}?update_mask&#x3D;condition &#x60;&#x60;&#x60;  With the JSON body:  &#x60;&#x60;&#x60; {   \&quot;condition\&quot;: \&quot;new value\&quot;,   \&quot;target\&quot;: \&quot;...\&quot; } &#x60;&#x60;&#x60;  &gt; Note: In this example &#x60;target&#x60; is not updated because it is not specified in the &#x60;update_mask&#x60;.
  # @param collection_id The collection the redirect belongs to, e.g. &#x60;my-collection&#x60;.
  # @param redirect_id The redirect to update, e.g. &#x60;1234&#x60;.
  # @param update_mask The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  Each field should be in snake case, e.g. &#x60;condition&#x60;, &#x60;target&#x60;.  For each field that you want to update, provide a corresponding value in the redirect object containing the new value.
  # @param redirect Details of the redirect to update.
  # @param [Hash] opts the optional parameters
  # @return [Redirect]
  describe 'update_redirect test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
