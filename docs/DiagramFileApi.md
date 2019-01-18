# AsposeDiagramCloud::DiagramFileApi

All URIs are relative to *https://api.aspose.cloud/v1.1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**diagram_file_get_diagram**](DiagramFileApi.md#diagram_file_get_diagram) | **GET** /diagram/{name} | Read document info or export.
[**diagram_file_post_save_as**](DiagramFileApi.md#diagram_file_post_save_as) | **POST** /diagram/{name}/SaveAs | Convert document and save result to storage.
[**diagram_file_put_create**](DiagramFileApi.md#diagram_file_put_create) | **PUT** /diagram/{name} | Create new diagram and save result to storage.
[**diagram_file_put_upload**](DiagramFileApi.md#diagram_file_put_upload) | **PUT** /diagram/{name}/upload | Upload file and save result to storage.


# **diagram_file_get_diagram**
> File diagram_file_get_diagram(name, opts)

Read document info or export.

### Example
```ruby
# load the gem
require 'aspose_diagram_cloud'

api_instance = AsposeDiagramCloud::DiagramFileApi.new

name = "name_example" # String | The document name.

opts = { 
  format: "format_example", # String | The exported file format.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | storage name.
}

begin
  #Read document info or export.
  result = api_instance.diagram_file_get_diagram(name, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramFileApi->diagram_file_get_diagram: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **format** | **String**| The exported file format. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| storage name. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **diagram_file_post_save_as**
> SaveResponse diagram_file_post_save_as(name, opts)

Convert document and save result to storage.

### Example
```ruby
# load the gem
require 'aspose_diagram_cloud'

api_instance = AsposeDiagramCloud::DiagramFileApi.new

name = "name_example" # String | The document name.

opts = { 
  format: AsposeDiagramCloud::FileFormatRequest.new, # FileFormatRequest | Save format.
  newfilename: "newfilename_example", # String | The new file name.
  folder: "folder_example", # String | The document folder.
  is_overwrite: false, # BOOLEAN | If true overwrite the same name file.The default value is false.
  storage: "storage_example" # String | storage name.
}

begin
  #Convert document and save result to storage.
  result = api_instance.diagram_file_post_save_as(name, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramFileApi->diagram_file_post_save_as: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **format** | [**FileFormatRequest**](FileFormatRequest.md)| Save format. | [optional] 
 **newfilename** | **String**| The new file name. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **is_overwrite** | **BOOLEAN**| If true overwrite the same name file.The default value is false. | [optional] [default to false]
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaveResponse**](SaveResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **diagram_file_put_create**
> SaaSposeResponse diagram_file_put_create(name, opts)

Create new diagram and save result to storage.

### Example
```ruby
# load the gem
require 'aspose_diagram_cloud'

api_instance = AsposeDiagramCloud::DiagramFileApi.new

name = "name_example" # String | The new document name.

opts = { 
  folder: "folder_example", # String | The new document folder.
  is_overwrite: false, # BOOLEAN | If true overwrite the same name file.The default value is false.
  storage: "storage_example" # String | storage name.
}

begin
  #Create new diagram and save result to storage.
  result = api_instance.diagram_file_put_create(name, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramFileApi->diagram_file_put_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The new document name. | 
 **folder** | **String**| The new document folder. | [optional] 
 **is_overwrite** | **BOOLEAN**| If true overwrite the same name file.The default value is false. | [optional] [default to false]
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **diagram_file_put_upload**
> SaaSposeResponse diagram_file_put_upload(name, opts)

Upload file and save result to storage.

### Example
```ruby
# load the gem
require 'aspose_diagram_cloud'

api_instance = AsposeDiagramCloud::DiagramFileApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  is_overwrite: false, # BOOLEAN | If true overwrite the same name file.The default value is false.
  storage: "storage_example" # String | storage name.
}

begin
  #Upload file and save result to storage.
  result = api_instance.diagram_file_put_upload(name, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling DiagramFileApi->diagram_file_put_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **is_overwrite** | **BOOLEAN**| If true overwrite the same name file.The default value is false. | [optional] [default to false]
 **storage** | **String**| storage name. | [optional] 

### Return type

[**SaaSposeResponse**](SaaSposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



