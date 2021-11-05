=begin
#Sajari API

#Sajari is a smart, highly-configurable, real-time search service that enables thousands of businesses worldwide to provide amazing search experiences on their websites, stores, and applications.

The version of the OpenAPI document: v4
Contact: support@sajari.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module SajariAPIClient
  class CollectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create collection
    # Create an empty collection.  Before records can be added to a collection, the schema and pipelines for the collection have to be set up. Consider setting up new collections via the Sajari Console, which handles the creation of the schema and pipelines for you.
    # @param collection_id [String] The ID to use for the collection.  This must start with an alphanumeric character followed by one or more alphanumeric or &#x60;-&#x60; characters. Strictly speaking, it must match the regular expression: &#x60;^[A-Za-z][A-Za-z0-9\\-]*$&#x60;.
    # @param collection [Collection] Details of the collection to create.
    # @param [Hash] opts the optional parameters
    # @return [Collection]
    def create_collection(collection_id, collection, opts = {})
      data, _status_code, _headers = create_collection_with_http_info(collection_id, collection, opts)
      data
    end

    # Create collection
    # Create an empty collection.  Before records can be added to a collection, the schema and pipelines for the collection have to be set up. Consider setting up new collections via the Sajari Console, which handles the creation of the schema and pipelines for you.
    # @param collection_id [String] The ID to use for the collection.  This must start with an alphanumeric character followed by one or more alphanumeric or &#x60;-&#x60; characters. Strictly speaking, it must match the regular expression: &#x60;^[A-Za-z][A-Za-z0-9\\-]*$&#x60;.
    # @param collection [Collection] Details of the collection to create.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Collection, Integer, Hash)>] Collection data, response status code and response headers
    def create_collection_with_http_info(collection_id, collection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.create_collection ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling CollectionsApi.create_collection"
      end
      # verify the required parameter 'collection' is set
      if @api_client.config.client_side_validation && collection.nil?
        fail ArgumentError, "Missing the required parameter 'collection' when calling CollectionsApi.create_collection"
      end
      # resource path
      local_var_path = '/v4/collections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'collection_id'] = collection_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(collection)

      # return_type
      return_type = opts[:debug_return_type] || 'Collection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.create_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#create_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete collection
    # Delete a collection and all of its associated data.  > Note: This operation cannot be reversed.
    # @param collection_id [String] The collection to delete, e.g. &#x60;my-collection&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_collection(collection_id, opts = {})
      data, _status_code, _headers = delete_collection_with_http_info(collection_id, opts)
      data
    end

    # Delete collection
    # Delete a collection and all of its associated data.  &gt; Note: This operation cannot be reversed.
    # @param collection_id [String] The collection to delete, e.g. &#x60;my-collection&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_collection_with_http_info(collection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.delete_collection ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling CollectionsApi.delete_collection"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.delete_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#delete_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get collection
    # Retrieve the details of a collection.
    # @param collection_id [String] The collection to retrieve, e.g. &#x60;my-collection&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Collection]
    def get_collection(collection_id, opts = {})
      data, _status_code, _headers = get_collection_with_http_info(collection_id, opts)
      data
    end

    # Get collection
    # Retrieve the details of a collection.
    # @param collection_id [String] The collection to retrieve, e.g. &#x60;my-collection&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Collection, Integer, Hash)>] Collection data, response status code and response headers
    def get_collection_with_http_info(collection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.get_collection ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling CollectionsApi.get_collection"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Collection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.get_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#get_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List collections
    # Retrieve a list of collections in an account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The maximum number of collections to return. The service may return fewer than this value.  If unspecified, at most 50 collections are returned.  The maximum value is 100; values above 100 are coerced to 100.
    # @option opts [String] :page_token A page token, received from a previous [ListCollections](/api#operation/ListCollections) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListCollections](/api#operation/ListCollections) must match the call that provided the page token.
    # @return [ListCollectionsResponse]
    def list_collections(opts = {})
      data, _status_code, _headers = list_collections_with_http_info(opts)
      data
    end

    # List collections
    # Retrieve a list of collections in an account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The maximum number of collections to return. The service may return fewer than this value.  If unspecified, at most 50 collections are returned.  The maximum value is 100; values above 100 are coerced to 100.
    # @option opts [String] :page_token A page token, received from a previous [ListCollections](/api#operation/ListCollections) call.  Provide this to retrieve the subsequent page.  When paginating, all other parameters provided to [ListCollections](/api#operation/ListCollections) must match the call that provided the page token.
    # @return [Array<(ListCollectionsResponse, Integer, Hash)>] ListCollectionsResponse data, response status code and response headers
    def list_collections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.list_collections ...'
      end
      # resource path
      local_var_path = '/v4/collections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListCollectionsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.list_collections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#list_collections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query collection
    # Query the collection to search for records.  The following example demonstrates how to run a simple search for a particular string:  ```json {   \"variables\": { \"q\": \"search terms\" } } ```  For more information:  - See [filtering content](https://docs.sajari.com/user-guide/integrating-search/filters/) - See [tracking in the Go SDK](https://github.com/sajari/sdk-go/blob/v2/session.go) - See [tracking in the JS SDK](https://github.com/sajari/sajari-sdk-js/blob/master/src/session.ts)
    # @param collection_id [String] The collection to query, e.g. &#x60;my-collection&#x60;.
    # @param query_collection_request [QueryCollectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [QueryCollectionResponse]
    def query_collection(collection_id, query_collection_request, opts = {})
      data, _status_code, _headers = query_collection_with_http_info(collection_id, query_collection_request, opts)
      data
    end

    # Query collection
    # Query the collection to search for records.  The following example demonstrates how to run a simple search for a particular string:  &#x60;&#x60;&#x60;json {   \&quot;variables\&quot;: { \&quot;q\&quot;: \&quot;search terms\&quot; } } &#x60;&#x60;&#x60;  For more information:  - See [filtering content](https://docs.sajari.com/user-guide/integrating-search/filters/) - See [tracking in the Go SDK](https://github.com/sajari/sdk-go/blob/v2/session.go) - See [tracking in the JS SDK](https://github.com/sajari/sajari-sdk-js/blob/master/src/session.ts)
    # @param collection_id [String] The collection to query, e.g. &#x60;my-collection&#x60;.
    # @param query_collection_request [QueryCollectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryCollectionResponse, Integer, Hash)>] QueryCollectionResponse data, response status code and response headers
    def query_collection_with_http_info(collection_id, query_collection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.query_collection ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling CollectionsApi.query_collection"
      end
      # verify the required parameter 'query_collection_request' is set
      if @api_client.config.client_side_validation && query_collection_request.nil?
        fail ArgumentError, "Missing the required parameter 'query_collection_request' when calling CollectionsApi.query_collection"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}:query'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(query_collection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'QueryCollectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.query_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#query_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query collection
    # Query the collection to search for records.  The following example demonstrates how to run a simple search for a particular string:  ```json {   \"variables\": { \"q\": \"search terms\" } } ```  For more information:  - See [filtering content](https://docs.sajari.com/user-guide/integrating-search/filters/) - See [tracking in the Go SDK](https://github.com/sajari/sdk-go/blob/v2/session.go) - See [tracking in the JS SDK](https://github.com/sajari/sajari-sdk-js/blob/master/src/session.ts)
    # @param collection_id [String] The collection to query, e.g. &#x60;my-collection&#x60;.
    # @param query_collection_request [QueryCollectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [QueryCollectionResponse]
    def query_collection2(collection_id, query_collection_request, opts = {})
      data, _status_code, _headers = query_collection2_with_http_info(collection_id, query_collection_request, opts)
      data
    end

    # Query collection
    # Query the collection to search for records.  The following example demonstrates how to run a simple search for a particular string:  &#x60;&#x60;&#x60;json {   \&quot;variables\&quot;: { \&quot;q\&quot;: \&quot;search terms\&quot; } } &#x60;&#x60;&#x60;  For more information:  - See [filtering content](https://docs.sajari.com/user-guide/integrating-search/filters/) - See [tracking in the Go SDK](https://github.com/sajari/sdk-go/blob/v2/session.go) - See [tracking in the JS SDK](https://github.com/sajari/sajari-sdk-js/blob/master/src/session.ts)
    # @param collection_id [String] The collection to query, e.g. &#x60;my-collection&#x60;.
    # @param query_collection_request [QueryCollectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryCollectionResponse, Integer, Hash)>] QueryCollectionResponse data, response status code and response headers
    def query_collection2_with_http_info(collection_id, query_collection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.query_collection2 ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling CollectionsApi.query_collection2"
      end
      # verify the required parameter 'query_collection_request' is set
      if @api_client.config.client_side_validation && query_collection_request.nil?
        fail ArgumentError, "Missing the required parameter 'query_collection_request' when calling CollectionsApi.query_collection2"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}:queryCollection'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(query_collection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'QueryCollectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.query_collection2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#query_collection2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update collection
    # Update the details of a collection.
    # @param collection_id [String] The collection to update, e.g. &#x60;my-collection&#x60;.
    # @param update_mask [String] The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  Each field should be in snake case, e.g. &#x60;display_name&#x60;.  For each field that you want to update, provide a corresponding value in the collection object containing the new value.
    # @param collection [Collection] Details of the collection to update.
    # @param [Hash] opts the optional parameters
    # @return [Collection]
    def update_collection(collection_id, update_mask, collection, opts = {})
      data, _status_code, _headers = update_collection_with_http_info(collection_id, update_mask, collection, opts)
      data
    end

    # Update collection
    # Update the details of a collection.
    # @param collection_id [String] The collection to update, e.g. &#x60;my-collection&#x60;.
    # @param update_mask [String] The list of fields to be updated, separated by a comma, e.g. &#x60;field1,field2&#x60;.  Each field should be in snake case, e.g. &#x60;display_name&#x60;.  For each field that you want to update, provide a corresponding value in the collection object containing the new value.
    # @param collection [Collection] Details of the collection to update.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Collection, Integer, Hash)>] Collection data, response status code and response headers
    def update_collection_with_http_info(collection_id, update_mask, collection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.update_collection ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling CollectionsApi.update_collection"
      end
      # verify the required parameter 'update_mask' is set
      if @api_client.config.client_side_validation && update_mask.nil?
        fail ArgumentError, "Missing the required parameter 'update_mask' when calling CollectionsApi.update_collection"
      end
      # verify the required parameter 'collection' is set
      if @api_client.config.client_side_validation && collection.nil?
        fail ArgumentError, "Missing the required parameter 'collection' when calling CollectionsApi.update_collection"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'update_mask'] = update_mask

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(collection)

      # return_type
      return_type = opts[:debug_return_type] || 'Collection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.update_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#update_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
