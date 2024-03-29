=begin
#Search.io API

#Search.io offers a search and discovery service with Neuralsearch®, the world's first instant AI search technology. Businesses of all sizes use Search.io to build site search and discovery solutions that maximize e-commerce revenue, optimize on-site customer experience, and scale their online presence.

The version of the OpenAPI document: v4
Contact: support@search.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module SajariAPIClient
  class RecordsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Batch update records
    # The batch version of the [UpdateRecord](/docs/api#operation/UpdateRecord) call.
    # @param collection_id [String] The collection that contains the records to update, e.g. &#x60;my-collection&#x60;.
    # @param batch_update_records_request [BatchUpdateRecordsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [BatchUpdateRecordsResponse]
    def batch_update_records(collection_id, batch_update_records_request, opts = {})
      data, _status_code, _headers = batch_update_records_with_http_info(collection_id, batch_update_records_request, opts)
      data
    end

    # Batch update records
    # The batch version of the [UpdateRecord](/docs/api#operation/UpdateRecord) call.
    # @param collection_id [String] The collection that contains the records to update, e.g. &#x60;my-collection&#x60;.
    # @param batch_update_records_request [BatchUpdateRecordsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchUpdateRecordsResponse, Integer, Hash)>] BatchUpdateRecordsResponse data, response status code and response headers
    def batch_update_records_with_http_info(collection_id, batch_update_records_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecordsApi.batch_update_records ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling RecordsApi.batch_update_records"
      end
      # verify the required parameter 'batch_update_records_request' is set
      if @api_client.config.client_side_validation && batch_update_records_request.nil?
        fail ArgumentError, "Missing the required parameter 'batch_update_records_request' when calling RecordsApi.batch_update_records"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}/records:batchUpdate'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_update_records_request)

      # return_type
      return_type = opts[:debug_return_type] || 'BatchUpdateRecordsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"RecordsApi.batch_update_records",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordsApi#batch_update_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Batch upsert records
    # The batch version of the [UpsertRecord](/docs/api#operation/UpsertRecord) call.
    # @param collection_id [String] The collection to upsert the records in, e.g. &#x60;my-collection&#x60;.
    # @param batch_upsert_records_request [BatchUpsertRecordsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [BatchUpsertRecordsResponse]
    def batch_upsert_records(collection_id, batch_upsert_records_request, opts = {})
      data, _status_code, _headers = batch_upsert_records_with_http_info(collection_id, batch_upsert_records_request, opts)
      data
    end

    # Batch upsert records
    # The batch version of the [UpsertRecord](/docs/api#operation/UpsertRecord) call.
    # @param collection_id [String] The collection to upsert the records in, e.g. &#x60;my-collection&#x60;.
    # @param batch_upsert_records_request [BatchUpsertRecordsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchUpsertRecordsResponse, Integer, Hash)>] BatchUpsertRecordsResponse data, response status code and response headers
    def batch_upsert_records_with_http_info(collection_id, batch_upsert_records_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecordsApi.batch_upsert_records ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling RecordsApi.batch_upsert_records"
      end
      # verify the required parameter 'batch_upsert_records_request' is set
      if @api_client.config.client_side_validation && batch_upsert_records_request.nil?
        fail ArgumentError, "Missing the required parameter 'batch_upsert_records_request' when calling RecordsApi.batch_upsert_records"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}/records:batchUpsert'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(batch_upsert_records_request)

      # return_type
      return_type = opts[:debug_return_type] || 'BatchUpsertRecordsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"RecordsApi.batch_upsert_records",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordsApi#batch_upsert_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete record
    # Delete a record with the given key.
    # @param collection_id [String] The collection that contains the record to delete, e.g. &#x60;my-collection&#x60;.
    # @param delete_record_request [DeleteRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_record(collection_id, delete_record_request, opts = {})
      data, _status_code, _headers = delete_record_with_http_info(collection_id, delete_record_request, opts)
      data
    end

    # Delete record
    # Delete a record with the given key.
    # @param collection_id [String] The collection that contains the record to delete, e.g. &#x60;my-collection&#x60;.
    # @param delete_record_request [DeleteRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_record_with_http_info(collection_id, delete_record_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecordsApi.delete_record ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling RecordsApi.delete_record"
      end
      # verify the required parameter 'delete_record_request' is set
      if @api_client.config.client_side_validation && delete_record_request.nil?
        fail ArgumentError, "Missing the required parameter 'delete_record_request' when calling RecordsApi.delete_record"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}/records:delete'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_record_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"RecordsApi.delete_record",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordsApi#delete_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get record
    # Retrieve a record with the given key.
    # @param collection_id [String] The collection that contains the record to retrieve, e.g. &#x60;my-collection&#x60;.
    # @param get_record_request [GetRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_record(collection_id, get_record_request, opts = {})
      data, _status_code, _headers = get_record_with_http_info(collection_id, get_record_request, opts)
      data
    end

    # Get record
    # Retrieve a record with the given key.
    # @param collection_id [String] The collection that contains the record to retrieve, e.g. &#x60;my-collection&#x60;.
    # @param get_record_request [GetRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_record_with_http_info(collection_id, get_record_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecordsApi.get_record ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling RecordsApi.get_record"
      end
      # verify the required parameter 'get_record_request' is set
      if @api_client.config.client_side_validation && get_record_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_record_request' when calling RecordsApi.get_record"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}/records:get'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_record_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"RecordsApi.get_record",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordsApi#get_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update record
    # Add or update specific fields within a record with the given values. The updated record is returned in the response.  To replace all fields in a record, you should use the [UpsertRecord](/docs/api#operation/UpsertRecord) call.  Note that the update record call cannot be used to add or update indexed or unique fields. For this case use the [UpsertRecord](/docs/api#operation/UpsertRecord) call.
    # @param collection_id [String] The collection that contains the record to update, e.g. &#x60;my-collection&#x60;.
    # @param update_record_request [UpdateRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def update_record(collection_id, update_record_request, opts = {})
      data, _status_code, _headers = update_record_with_http_info(collection_id, update_record_request, opts)
      data
    end

    # Update record
    # Add or update specific fields within a record with the given values. The updated record is returned in the response.  To replace all fields in a record, you should use the [UpsertRecord](/docs/api#operation/UpsertRecord) call.  Note that the update record call cannot be used to add or update indexed or unique fields. For this case use the [UpsertRecord](/docs/api#operation/UpsertRecord) call.
    # @param collection_id [String] The collection that contains the record to update, e.g. &#x60;my-collection&#x60;.
    # @param update_record_request [UpdateRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_record_with_http_info(collection_id, update_record_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecordsApi.update_record ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling RecordsApi.update_record"
      end
      # verify the required parameter 'update_record_request' is set
      if @api_client.config.client_side_validation && update_record_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_record_request' when calling RecordsApi.update_record"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}/records:update'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_record_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"RecordsApi.update_record",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordsApi#update_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upsert record
    # If the record does not exist in the collection it is inserted. If it does exist it is updated.  If no pipeline is specified, the default record pipeline is used to process the record.  If the record is inserted, the response contains the key of the inserted record. You can use this if you need to retrieve or delete the record. If the record is updated, the response does not contain a key. Callers can use this as a signal to determine if the record is inserted/created or updated.  For example, to add a single product from your ecommerce store to a collection, use the following call:  ```json {   \"pipeline\": {     \"name\": \"my-pipeline\",     \"version\": \"1\"   },   \"record\": {     \"id\": \"54hdc7h2334h\",     \"name\": \"Smart TV\",     \"price\": 1999,     \"brand\": \"Acme\",     \"description\": \"...\",     \"in_stock\": true   } } ```
    # @param collection_id [String] The collection to upsert the record in, e.g. &#x60;my-collection&#x60;.
    # @param upsert_record_request [UpsertRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [UpsertRecordResponse]
    def upsert_record(collection_id, upsert_record_request, opts = {})
      data, _status_code, _headers = upsert_record_with_http_info(collection_id, upsert_record_request, opts)
      data
    end

    # Upsert record
    # If the record does not exist in the collection it is inserted. If it does exist it is updated.  If no pipeline is specified, the default record pipeline is used to process the record.  If the record is inserted, the response contains the key of the inserted record. You can use this if you need to retrieve or delete the record. If the record is updated, the response does not contain a key. Callers can use this as a signal to determine if the record is inserted/created or updated.  For example, to add a single product from your ecommerce store to a collection, use the following call:  &#x60;&#x60;&#x60;json {   \&quot;pipeline\&quot;: {     \&quot;name\&quot;: \&quot;my-pipeline\&quot;,     \&quot;version\&quot;: \&quot;1\&quot;   },   \&quot;record\&quot;: {     \&quot;id\&quot;: \&quot;54hdc7h2334h\&quot;,     \&quot;name\&quot;: \&quot;Smart TV\&quot;,     \&quot;price\&quot;: 1999,     \&quot;brand\&quot;: \&quot;Acme\&quot;,     \&quot;description\&quot;: \&quot;...\&quot;,     \&quot;in_stock\&quot;: true   } } &#x60;&#x60;&#x60;
    # @param collection_id [String] The collection to upsert the record in, e.g. &#x60;my-collection&#x60;.
    # @param upsert_record_request [UpsertRecordRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpsertRecordResponse, Integer, Hash)>] UpsertRecordResponse data, response status code and response headers
    def upsert_record_with_http_info(collection_id, upsert_record_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecordsApi.upsert_record ...'
      end
      # verify the required parameter 'collection_id' is set
      if @api_client.config.client_side_validation && collection_id.nil?
        fail ArgumentError, "Missing the required parameter 'collection_id' when calling RecordsApi.upsert_record"
      end
      # verify the required parameter 'upsert_record_request' is set
      if @api_client.config.client_side_validation && upsert_record_request.nil?
        fail ArgumentError, "Missing the required parameter 'upsert_record_request' when calling RecordsApi.upsert_record"
      end
      # resource path
      local_var_path = '/v4/collections/{collection_id}/records:upsert'.sub('{' + 'collection_id' + '}', CGI.escape(collection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(upsert_record_request)

      # return_type
      return_type = opts[:debug_return_type] || 'UpsertRecordResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BasicAuth']

      new_options = opts.merge(
        :operation => :"RecordsApi.upsert_record",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecordsApi#upsert_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
