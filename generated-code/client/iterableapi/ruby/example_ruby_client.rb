# add '.' and './lib' to load path
$LOAD_PATH << '.' << './lib' << './models'

require 'swagger'
require 'api_api' # aka email_api
require 'targetemailrequest'

Swagger.configure do |config|
  config.api_key = 'iterableApiKey' 
  config.host = 'localhost:9000'
  config.base_path = '/'  
  config.inject_format = false  # important, set this to false!
end

# print the swagger configuration
puts Swagger.configuration.inspect

# swang a triggered email
ter = TargetEmailRequest.new
ter.campaign_id = 9
ter.recipient_email = 'girish@iterable.com'
ter.inline_css = false

# print out the TargetEmailRequest
puts ter.inspect
response = Api_api.target(ter)
