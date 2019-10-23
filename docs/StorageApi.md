# AsposeDiagramCloud::StorageApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_file**](StorageApi.md#copy_file) | **PUT** /diagram/storage/file/copy/{srcPath} | Copy file
[**copy_folder**](StorageApi.md#copy_folder) | **PUT** /diagram/storage/folder/copy/{srcPath} | Copy folder
[**create_folder**](StorageApi.md#create_folder) | **PUT** /diagram/storage/folder/{path} | Create the folder
[**delete_file**](StorageApi.md#delete_file) | **DELETE** /diagram/storage/file/{path} | Delete file
[**delete_folder**](StorageApi.md#delete_folder) | **DELETE** /diagram/storage/folder/{path} | Delete folder
[**download_file**](StorageApi.md#download_file) | **GET** /diagram/storage/file/{path} | Download file
[**get_disc_usage**](StorageApi.md#get_disc_usage) | **GET** /diagram/storage/disc | Get disc usage
[**get_file_versions**](StorageApi.md#get_file_versions) | **GET** /diagram/storage/version/{path} | Get file versions
[**get_files_list**](StorageApi.md#get_files_list) | **GET** /diagram/storage/folder/{path} | Get all files and folders within a folder
[**move_file**](StorageApi.md#move_file) | **PUT** /diagram/storage/file/move/{srcPath} | Move file
[**move_folder**](StorageApi.md#move_folder) | **PUT** /diagram/storage/folder/move/{srcPath} | Move folder
[**object_exists**](StorageApi.md#object_exists) | **GET** /diagram/storage/exist/{path} | Check if file or folder exists
[**storage_exists**](StorageApi.md#storage_exists) | **GET** /diagram/storage/{storageName}/exist | Check if storage exists
[**upload_file**](StorageApi.md#upload_file) | **PUT** /diagram/storage/file/{path} | Upload file


# **copy_file**
> copy_file(src_path, dest_path, opts)

Copy file

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

src_path = "src_path_example" # String | Source file path e.g. '/folder/file.ext'

dest_path = "dest_path_example" # String | Destination file path

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example", # String | Destination storage name
  version_id: "version_id_example" # String | File version ID to copy
}

begin
  #Copy file
  api_instance.copy_file(src_path, dest_path, opts)
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->copy_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_folder**
> copy_folder(src_path, dest_path, opts)

Copy folder

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

src_path = "src_path_example" # String | Source folder path e.g. '/src'

dest_path = "dest_path_example" # String | Destination folder path e.g. '/dst'

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example" # String | Destination storage name
}

begin
  #Copy folder
  api_instance.copy_folder(src_path, dest_path, opts)
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->copy_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_folder**
> create_folder(path, opts)

Create the folder

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | Folder path to create e.g. 'folder_1/folder_2/'

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Create the folder
  api_instance.create_folder(path, opts)
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_file**
> delete_file(path, opts)

Delete file

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  version_id: "version_id_example" # String | File version ID to delete
}

begin
  #Delete file
  api_instance.delete_file(path, opts)
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->delete_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(path, opts)

Delete folder

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | Folder path e.g. '/folder'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  recursive: false # BOOLEAN | Enable to delete folders, subfolders and files
}

begin
  #Delete folder
  api_instance.delete_folder(path, opts)
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_file**
> File download_file(path, opts)

Download file

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  version_id: "version_id_example" # String | File version ID to download
}

begin
  #Download file
  result = api_instance.download_file(path, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->download_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_disc_usage**
> DiscUsage get_disc_usage(opts)

Get disc usage

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Get disc usage
  result = api_instance.get_disc_usage(opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->get_disc_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**DiscUsage**](DiscUsage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_file_versions**
> FileVersions get_file_versions(path, opts)

Get file versions

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | File path e.g. '/file.ext'

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Get file versions
  result = api_instance.get_file_versions(path, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->get_file_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FileVersions**](FileVersions.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_files_list**
> FilesList get_files_list(path, opts)

Get all files and folders within a folder

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | Folder path e.g. '/folder'

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Get all files and folders within a folder
  result = api_instance.get_files_list(path, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->get_files_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesList**](FilesList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_file**
> move_file(src_path, dest_path, opts)

Move file

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

src_path = "src_path_example" # String | Source file path e.g. '/src.ext'

dest_path = "dest_path_example" # String | Destination file path e.g. '/dest.ext'

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example", # String | Destination storage name
  version_id: "version_id_example" # String | File version ID to move
}

begin
  #Move file
  api_instance.move_file(src_path, dest_path, opts)
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->move_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_folder**
> move_folder(src_path, dest_path, opts)

Move folder

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

src_path = "src_path_example" # String | Folder path to move e.g. '/folder'

dest_path = "dest_path_example" # String | Destination folder path to move to e.g '/dst'

opts = { 
  src_storage_name: "src_storage_name_example", # String | Source storage name
  dest_storage_name: "dest_storage_name_example" # String | Destination storage name
}

begin
  #Move folder
  api_instance.move_folder(src_path, dest_path, opts)
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->move_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **object_exists**
> ObjectExist object_exists(path, opts)

Check if file or folder exists

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | File or folder path e.g. '/file.ext' or '/folder'

opts = { 
  storage_name: "storage_name_example", # String | Storage name
  version_id: "version_id_example" # String | File version ID
}

begin
  #Check if file or folder exists
  result = api_instance.object_exists(path, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->object_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

### Return type

[**ObjectExist**](ObjectExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **storage_exists**
> StorageExist storage_exists(storage_name)

Check if storage exists

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

storage_name = "storage_name_example" # String | Storage name


begin
  #Check if storage exists
  result = api_instance.storage_exists(storage_name)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->storage_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_file**
> FilesUploadResult upload_file(path, file, opts)

Upload file

### Example
```ruby
# load the gem
require 'AsposeDiagramCloud'
# setup authorization
AsposeDiagramCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeDiagramCloud::StorageApi.new

path = "path_example" # String | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             

file = File.new("/path/to/file.txt") # File | File to upload

opts = { 
  storage_name: "storage_name_example" # String | Storage name
}

begin
  #Upload file
  result = api_instance.upload_file(path, file, opts)
  p result
rescue AsposeDiagramCloud::ApiError => e
  puts "Exception when calling StorageApi->upload_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



