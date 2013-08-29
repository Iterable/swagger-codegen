# add '.' and './lib' to load path
location = '../generated-code/client/iterableapi/ruby' 
$LOAD_PATH << location << './lib' << './models' << location + '/lib' << location + '/models'

puts $LOAD_PATH

require 'swagger'
require 'api_api' # aka email_api
require 'targetemailrequest'
require 'subscriber'
require 'subscriberequest'

Swagger.configure do |config|
  config.api_key = 'iterableApiKey' 
  config.host = 'localhost:9000'
  config.base_path = '/'  
  config.inject_format = false  # important, set this to false!
end

# print the swagger configuration
puts Swagger.configuration.inspect

# swang a targeted email
ter = TargetEmailRequest.new
ter.campaign_id = 9
ter.recipient_email = 'girish@iterable.com'
ter.inline_css = false

# print out the TargetEmailRequest
puts ter.inspect
response = Api_api.target(ter)

# swang a list sub
sr = SubscribeRequest.new
subscriber = Subscriber.new
subscriber.email = 'girish@iterable.com'
sr.list_id = 8
sr.subscribers = [subscriber]
puts sr.inspect

