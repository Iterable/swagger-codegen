# add '.' and './lib' to load path
location = '../generated-code/client/iterableapi/ruby' 
$LOAD_PATH << location << './lib' << './models' << location + '/lib' << location + '/models'

require 'swagger'
require 'api_api' # aka email_api
require 'targetemailrequest'
require 'subscriber'
require 'subscriberequest'

# set the configuration
Swagger.configure do |config|
  config.api_key = 'iterableApiKey' 
  config.host = 'localhost:9000'
  config.base_path = '/'  
  config.inject_format = false  # important, set this to false!
end

# send a targeted email
ter = TargetEmailRequest.new
ter.campaign_id = 1
ter.recipient_email = 'girish@iterable.com'
ter.inline_css = false

puts 'Request: '
puts ter.inspect
response = Api_api.target(ter)

# swang a list sub
subscriber = Subscriber.new
subscriber.email = 'andrew@iterable.com'
puts subscriber.inspect

sr = SubscribeRequest.new
sr.subscribers = [subscriber]
#sr.subscribers = [{:email => 'girish@iterable.com'}]
sr.list_id = 3

puts sr.inspect

response = Api_api.subscribe(sr)

