class SubscribeRequest
  attr_accessor :list_id, :subscribers

  # :internal => :external
  def self.attribute_map
  {
      :list_id => :listId, :subscribers => :subscribers

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscribeRequest.attribute_map["list_id".to_sym] != nil
        name = "list_id".to_sym
        value = attributes["listId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscribeRequest.attribute_map["subscribers".to_sym] != nil
        name = "subscribers".to_sym
        value = attributes["subscribers"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Subscriber.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SubscribeRequest.attribute_map.each_pair do |key,value|
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

