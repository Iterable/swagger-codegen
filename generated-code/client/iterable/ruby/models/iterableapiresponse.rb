class IterableApiResponse
  attr_accessor :code, :params, :msg

  # :internal => :external
  def self.attribute_map
  {
      :code => :code, :params => :params, :msg => :msg

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if IterableApiResponse.attribute_map["code".to_sym] != nil
        name = "code".to_sym
        value = attributes["code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if IterableApiResponse.attribute_map["params".to_sym] != nil
        name = "params".to_sym
        value = attributes["params"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Map[string,string].new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if IterableApiResponse.attribute_map["msg".to_sym] != nil
        name = "msg".to_sym
        value = attributes["msg"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    IterableApiResponse.attribute_map.each_pair do |key,value|
      v = self.send(key)
      if v.is_a?(Array)
        array = Array.new
        v.each do |arrayValue|
          array.push arrayValue.to_body
        end
        v = array
      end
      body[value] = v unless v.nil?
    end
    body
  end
end

