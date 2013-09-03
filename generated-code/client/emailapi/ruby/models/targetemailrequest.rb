class TargetEmailRequest
  attr_accessor :campaign_id, :inline_css, :recipient_email

  # :internal => :external
  def self.attribute_map
  {
      :campaign_id => :campaignId, :inline_css => :inlineCss, :recipient_email => :recipientEmail

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

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
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

