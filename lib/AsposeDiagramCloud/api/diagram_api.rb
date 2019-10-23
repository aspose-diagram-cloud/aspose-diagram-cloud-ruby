=begin
#Aspose.Diagram Cloud API Reference

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module AsposeDiagramCloud
  class DiagramApi
    attr_accessor :api_client

    def initialize(grant_type,app_sid,app_key,api_client = ApiClient.default)
      @api_client = api_client
      @api_client.config.api_key['api_key'] = app_key
      @api_client.config.api_key['app_sid'] = app_sid
      @api_client.config.api_key['grant_type'] = grant_type
      request_token

    end

         #
     # Gets a request token from server
     #
     def request_token
      authconfig=Configuration.new
      authconfig.base_path=""
      authClient=ApiClient.new(authconfig)
      authApi=AsposeDiagramCloud::OAuthApi.new(authClient)
      config=@api_client.config
      data, _status_code, _headers=authApi.o_auth_post(config.api_key['grant_type'],config.api_key['app_sid'],config.api_key['api_key'])
      #print(data.access_token)
      @api_client.default_headers["Authorization"] ="Bearer " + data.access_token
    end
    # Converts document from the request's content to the specified format.
    # 
    # @param name Download document name.
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_filename Source document name.
    # @return [File]
    def convert_document(name, file, opts = {})
      data, _status_code, _headers = convert_document_with_http_info(name, file, opts)
      return data
    end

    # Converts document from the request&#39;s content to the specified format.
    # 
    # @param name Download document name.
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source_filename Source document name.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def convert_document_with_http_info(name, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramApi.convert_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramApi.convert_document"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling DiagramApi.convert_document"
      end
      # resource path
      local_var_path = "/diagram/{name}/convert".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'sourceFilename'] = opts[:'source_filename'] if !opts[:'source_filename'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # form parameters
      form_params = {}
      #form_params["File"] = file

      # http body (model)
      post_body = file
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramApi#convert_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Empty file into the specified format.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false  (default to false)
    # @return [CreateNewResponse]
    def create_new(name, opts = {})
      data, _status_code, _headers = create_new_with_http_info(name, opts)
      return data
    end

    # Create Empty file into the specified format.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false 
    # @return [Array<(CreateNewResponse, Fixnum, Hash)>] CreateNewResponse data, response status code and response headers
    def create_new_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramApi.create_new ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramApi.create_new"
      end
      # resource path
      local_var_path = "/diagram/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'IsOverwrite'] = opts[:'is_overwrite'] if !opts[:'is_overwrite'].nil?

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
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateNewResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramApi#create_new\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Exports the document into the specified format.
    # 
    # @param name The document name.
    # @param format The destination format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @return [File]
    def download_file_with_format(name, format, opts = {})
      data, _status_code, _headers = download_file_with_format_with_http_info(name, format, opts)
      return data
    end

    # Exports the document into the specified format.
    # 
    # @param name The document name.
    # @param format The destination format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def download_file_with_format_with_http_info(name, format, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramApi.download_file_with_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramApi.download_file_with_format"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling DiagramApi.download_file_with_format"
      end
      # resource path
      local_var_path = "/diagram/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = format
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramApi#download_file_with_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts document to destination format with detailed settings and saves result to storage.
    # 
    # @param name Original document name.
    # @param save_options_request Save options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false  (default to false)
    # @return [SaveAsResponse]
    def save_as(name, save_options_request, opts = {})
      data, _status_code, _headers = save_as_with_http_info(name, save_options_request, opts)
      return data
    end

    # Converts document to destination format with detailed settings and saves result to storage.
    # 
    # @param name Original document name.
    # @param save_options_request Save options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false 
    # @return [Array<(SaveAsResponse, Fixnum, Hash)>] SaveAsResponse data, response status code and response headers
    def save_as_with_http_info(name, save_options_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DiagramApi.save_as ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DiagramApi.save_as"
      end
      # verify the required parameter 'save_options_request' is set
      if @api_client.config.client_side_validation && save_options_request.nil?
        fail ArgumentError, "Missing the required parameter 'save_options_request' when calling DiagramApi.save_as"
      end
      # resource path
      local_var_path = "/diagram/{name}/saveAs".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'IsOverwrite'] = opts[:'is_overwrite'] if !opts[:'is_overwrite'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(save_options_request)
      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveAsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DiagramApi#save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
