=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module AsposeDiagramCloud
  class DiagramFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Read document info or export.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported file format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage storage name.
    # @return [File]
    def diagram_file_get_diagram(name, opts = {})
      data, _status_code, _headers = diagram_file_get_diagram_with_http_info(name, opts)
      return data
    end

    # Read document info or export.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The exported file format.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :storage storage name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def diagram_file_get_diagram_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramFileApi.diagram_file_get_diagram ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramFileApi.diagram_file_get_diagram"
      end
      # resource path
      local_var_path = "/diagram/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramFileApi#diagram_file_get_diagram\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document and save result to storage.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [FileFormatRequest] :format Save format.
    # @option opts [String] :newfilename The new file name.
    # @option opts [String] :folder The document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false. (default to false)
    # @option opts [String] :storage storage name.
    # @return [SaveResponse]
    def diagram_file_post_save_as(name, opts = {})
      data, _status_code, _headers = diagram_file_post_save_as_with_http_info(name, opts)
      return data
    end

    # Convert document and save result to storage.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [FileFormatRequest] :format Save format.
    # @option opts [String] :newfilename The new file name.
    # @option opts [String] :folder The document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false.
    # @option opts [String] :storage storage name.
    # @return [Array<(SaveResponse, Fixnum, Hash)>] SaveResponse data, response status code and response headers
    def diagram_file_post_save_as_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramFileApi.diagram_file_post_save_as ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramFileApi.diagram_file_post_save_as"
      end
      # resource path
      local_var_path = "/diagram/{name}/SaveAs".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'newfilename'] = opts[:'newfilename'] if !opts[:'newfilename'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'IsOverwrite'] = opts[:'is_overwrite'] if !opts[:'is_overwrite'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'format'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramFileApi#diagram_file_post_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new diagram and save result to storage.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The new document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false. (default to false)
    # @option opts [String] :storage storage name.
    # @return [SaaSposeResponse]
    def diagram_file_put_create(name, opts = {})
      data, _status_code, _headers = diagram_file_put_create_with_http_info(name, opts)
      return data
    end

    # Create new diagram and save result to storage.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The new document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false.
    # @option opts [String] :storage storage name.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def diagram_file_put_create_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramFileApi.diagram_file_put_create ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramFileApi.diagram_file_put_create"
      end
      # resource path
      local_var_path = "/diagram/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'IsOverwrite'] = opts[:'is_overwrite'] if !opts[:'is_overwrite'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramFileApi#diagram_file_put_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload file and save result to storage.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false. (default to false)
    # @option opts [String] :storage storage name.
    # @return [SaaSposeResponse]
    def diagram_file_put_upload(name, opts = {})
      data, _status_code, _headers = diagram_file_put_upload_with_http_info(name, opts)
      return data
    end

    # Upload file and save result to storage.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false.
    # @option opts [String] :storage storage name.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def diagram_file_put_upload_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramFileApi.diagram_file_put_upload ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramFileApi.diagram_file_put_upload"
      end
      # resource path
      local_var_path = "/diagram/{name}/upload".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'IsOverwrite'] = opts[:'is_overwrite'] if !opts[:'is_overwrite'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramFileApi#diagram_file_put_upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end