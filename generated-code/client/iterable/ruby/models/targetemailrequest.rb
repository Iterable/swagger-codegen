class TargetEmailRequest
  attr_accessor :data_fields, :campaign_id, :inline_css, :attachments, :recipient_email

  # :internal => :external
  def self.attribute_map
  {
      :data_fields => :dataFields, :campaign_id => :campaignId, :inline_css => :inlineCss, :attachments => :attachments, :recipient_email => :recipientEmail

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if TargetEmailRequest.attribute_map["data_fields".to_sym] != nil
        name = "data_fields".to_sym
        value = attributes["dataFields"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Map[string, object].new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if TargetEmailRequest.attribute_map["campaign_id".to_sym] != nil
        name = "campaign_id".to_sym
        value = attributes["campaignId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TargetEmailRequest.attribute_map["inline_css".to_sym] != nil
        name = "inline_css".to_sym
        value = attributes["inlineCss"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TargetEmailRequest.attribute_map["attachments".to_sym] != nil
        name = "attachments".to_sym
        value = attributes["attachments"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push AttachmentEntry.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if TargetEmailRequest.attribute_map["recipient_email".to_sym] != nil
        name = "recipient_email".to_sym
        value = attributes["recipientEmail"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    TargetEmailRequest.attribute_map.each_pair do |key,value|
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

