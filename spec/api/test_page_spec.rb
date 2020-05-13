=begin
#Aspose.Diagram Cloud API Reference

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end
#rspec spec/api/test_convert_spec.rb

require 'spec_helper'
require 'json'

$fileName="pageTest.vsdx"

# Unit tests for AsposeDiagramCloud::DiagramApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PageApi' do
  before do
    # run before each test
    #@instance = AsposeDiagramCloud::DiagramApi.new($grant_type,$client_id,$client_secret) 
  end

  after do
    # run after each test
  end

  describe 'test an instance of DiagramApi' do
    it 'should create an instance of DiagramApi' do
      expect($diagramApi).to be_instance_of(AsposeDiagramCloud::DiagramApi)
    end
  end

  # unit tests for create_new
  # Create Empty file into the specified format.
  # 
  # @param name The document name.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :folder The document folder.
  # @option opts [BOOLEAN] :is_overwrite If true overwrite the same name file.The default value is false 
  # @return [CreateNewResponse]
  describe 'create_new test' do
    it "should work" do
      name = $fileName
      folder = $storageTestFOLDER
      is_overwrite=true
      result=$diagramApi.create_new(name,  {:name=>name, :is_overwrite=>is_overwrite, :folder=>folder})
      #print(result)
      expect(result.created).not_to be_empty
      #assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'put_new_page test' do
    it "should work" do
      folder = $storageTestFOLDER
      result=$diagramApi.put_new_page($fileName,"newPage", {:folder=>folder})
      #print(result)
      expect(result.is_success).to be_truthy 
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'post_page_setup test' do
    it "should work" do
      folder = $storageTestFOLDER
      setting=AsposeDiagramCloud::PageSetting.new
      setting.page_width=2
      setting.page_height=2
      result=$diagramApi.post_page_setup($fileName,"Page-0",setting, {:folder=>folder})
      #print(result)
      expect(result.is_success).to be_truthy 
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'get_pages test' do
    it "should work" do
      folder = $storageTestFOLDER
      result=$diagramApi.get_pages($fileName, {:folder=>folder})
      print(result.model.size)
      expect(result.model.size).to  be > 0
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end


end