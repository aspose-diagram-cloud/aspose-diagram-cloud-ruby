=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

# Common files
require 'AsposeDiagramCloud/api_client'
require 'AsposeDiagramCloud/api_error'
require 'AsposeDiagramCloud/version'
require 'AsposeDiagramCloud/configuration'

# Models
require 'AsposeDiagramCloud/models/access_token_response'
require 'AsposeDiagramCloud/models/diagram_model'
require 'AsposeDiagramCloud/models/file_format_request'
require 'AsposeDiagramCloud/models/link'
require 'AsposeDiagramCloud/models/page_model'
require 'AsposeDiagramCloud/models/saa_spose_response'
require 'AsposeDiagramCloud/models/save_result'
require 'AsposeDiagramCloud/models/sharp_model'
require 'AsposeDiagramCloud/models/diagram_response'
require 'AsposeDiagramCloud/models/save_response'

# APIs
require 'AsposeDiagramCloud/api/diagram_file_api'
require 'AsposeDiagramCloud/api/o_auth_api'

module AsposeDiagramCloud
  class << self
    # Customize default settings for the SDK using block.
    #   AsposeDiagramCloud.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
