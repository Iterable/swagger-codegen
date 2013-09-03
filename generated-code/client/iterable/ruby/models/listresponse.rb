class ListResponse
  attr_accessor :fail_count, :success_count

  # :internal => :external
  def self.attribute_map
  {
      :fail_count => :failCount, :success_count => :successCount

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ListResponse.attribute_map["fail_count".to_sym] != nil
        name = "fail_count".to_sym
        value = attributes["failCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ListResponse.attribute_map["success_count".to_sym] != nil
        name = "success_count".to_sym
        value = attributes["successCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ListResponse.attribute_map.each_pair do |key,value|
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

