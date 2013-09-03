class AttachmentEntry
  attr_accessor :content, :name, :mime_type

  # :internal => :external
  def self.attribute_map
  {
      :content => :content, :name => :name, :mime_type => :mimeType

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AttachmentEntry.attribute_map["content".to_sym] != nil
        name = "content".to_sym
        value = attributes["content"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AttachmentEntry.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AttachmentEntry.attribute_map["mime_type".to_sym] != nil
        name = "mime_type".to_sym
        value = attributes["mimeType"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AttachmentEntry.attribute_map.each_pair do |key,value|
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

