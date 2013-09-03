class Unsubscriber
  attr_accessor :email

  # :internal => :external
  def self.attribute_map
  {
      :email => :email

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Unsubscriber.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Unsubscriber.attribute_map.each_pair do |key,value|
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

