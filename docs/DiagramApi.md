# AsposeDiagramCloud::DiagramApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_document**](DiagramApi.md#convert_document) | **PUT** /diagram/{name}/convert | Converts document from the request&#39;s content to the specified format.
[**create_new**](DiagramApi.md#create_new) | **PUT** /diagram/{name} | Create Empty file into the specified format.
[**download_file_with_format**](DiagramApi.md#download_file_with_format) | **GET** /diagram/{name} | Exports the document into the specified format.
[**save_as**](DiagramApi.md#save_as) | **POST** /diagram/{name}/saveAs | Converts document to destination format with detailed settings and saves result to storage.


# **convert_document**
> File convert_document(name, file, opts)

Converts document from the request's content to the specified format.

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::DiagramApi.new

name = "name_example" # String | Download document name.

file = File.new("/path/to/file.txt") # File | File to upload

opts = { 
  source_filename: "source_filename_example" # String | Source document name.
}

begin
  #Converts document from the request's content to the specified format.
  result = api_instance.convert_document(name, file, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramApi->convert_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Download document name. | 
 **file** | **File**| File to upload | 
 **source_filename** | **String**| Source document name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: multipart/form-data



# **create_new**
> CreateNewResponse create_new(name, opts)

Create Empty file into the specified format.

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::DiagramApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  is_overwrite: false # BOOLEAN | If true overwrite the same name file.The default value is false 
}

begin
  #Create Empty file into the specified format.
  result = api_instance.create_new(name, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramApi->create_new: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **is_overwrite** | **BOOLEAN**| If true overwrite the same name file.The default value is false  | [optional] [default to false]

### Return type

[**CreateNewResponse**](CreateNewResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_file_with_format**
> File download_file_with_format(name, format, opts)

Exports the document into the specified format.

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::DiagramApi.new

name = "name_example" # String | The document name.

format = "format_example" # String | The destination format.

opts = { 
  folder: "folder_example" # String | Original document folder.
}

begin
  #Exports the document into the specified format.
  result = api_instance.download_file_with_format(name, format, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramApi->download_file_with_format: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **format** | **String**| The destination format. | 
 **folder** | **String**| Original document folder. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **save_as**
> SaveAsResponse save_as(name, save_options_request, opts)

Converts document to destination format with detailed settings and saves result to storage.

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::DiagramApi.new

name = "name_example" # String | Original document name.

save_options_request = AsposeDiagramCloud::SaveOptionsRequest.new # SaveOptionsRequest | Save options.

opts = { 
  folder: "folder_example", # String | Original document folder.
  is_overwrite: false # BOOLEAN | If true overwrite the same name file.The default value is false 
}

begin
  #Converts document to destination format with detailed settings and saves result to storage.
  result = api_instance.save_as(name, save_options_request, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramApi->save_as: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Original document name. | 
 **save_options_request** | [**SaveOptionsRequest**](SaveOptionsRequest.md)| Save options. | 
 **folder** | **String**| Original document folder. | [optional] 
 **is_overwrite** | **BOOLEAN**| If true overwrite the same name file.The default value is false  | [optional] [default to false]

### Return type

[**SaveAsResponse**](SaveAsResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



