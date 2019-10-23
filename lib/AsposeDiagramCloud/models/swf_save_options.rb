=begin
#Aspose.Diagram Cloud API Reference

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module AsposeDiagramCloud

  class SWFSaveOptions
    attr_accessor :save_format

    attr_accessor :default_font

    attr_accessor :page_count

    attr_accessor :viewer_included

    attr_accessor :page_index

    attr_accessor :save_foreground_pages_only

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'save_format' => :'SaveFormat',
        :'default_font' => :'DefaultFont',
        :'page_count' => :'PageCount',
        :'viewer_included' => :'ViewerIncluded',
        :'page_index' => :'PageIndex',
        :'save_foreground_pages_only' => :'SaveForegroundPagesOnly'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'save_format' => :'String',
        :'default_font' => :'String',
        :'page_count' => :'Integer',
        :'viewer_included' => :'BOOLEAN',
        :'page_index' => :'Integer',
        :'save_foreground_pages_only' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'SaveFormat')
        self.save_format = attributes[:'SaveFormat']
      end

      if attributes.has_key?(:'DefaultFont')
        self.default_font = attributes[:'DefaultFont']
      end

      if attributes.has_key?(:'PageCount')
        self.page_count = attributes[:'PageCount']
      end

      if attributes.has_key?(:'ViewerIncluded')
        self.viewer_included = attributes[:'ViewerIncluded']
      end

      if attributes.has_key?(:'PageIndex')
        self.page_index = attributes[:'PageIndex']
      end

      if attributes.has_key?(:'SaveForegroundPagesOnly')
        self.save_foreground_pages_only = attributes[:'SaveForegroundPagesOnly']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @save_format.nil?
        invalid_properties.push("invalid value for 'save_format', save_format cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @save_format.nil?
      save_format_validator = EnumAttributeValidator.new('String', ["VDX", "VSX", "VTX", "TIFF", "PNG", "BMP", "EMF", "JPEG", "PDF", "XPS", "GIF", "HTML", "SVG", "SWF", "XAML", "VSDX", "VSTX", "VSSX", "VSDM", "VSSM", "VSTM"])
      return false unless save_format_validator.valid?(@save_format)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] save_format Object to be assigned
    def save_format=(save_format)
      validator = EnumAttributeValidator.new('String', ["VDX", "VSX", "VTX", "TIFF", "PNG", "BMP", "EMF", "JPEG", "PDF", "XPS", "GIF", "HTML", "SVG", "SWF", "XAML", "VSDX", "VSTX", "VSSX", "VSDM", "VSSM", "VSTM"])
      unless validator.valid?(save_format)
        fail ArgumentError, "invalid value for 'save_format', must be one of #{validator.allowable_values}."
      end
      @save_format = save_format
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          save_format == o.save_format &&
          default_font == o.default_font &&
          page_count == o.page_count &&
          viewer_included == o.viewer_included &&
          page_index == o.page_index &&
          save_foreground_pages_only == o.save_foreground_pages_only
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [save_format, default_font, page_count, viewer_included, page_index, save_foreground_pages_only].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposeDiagramCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
