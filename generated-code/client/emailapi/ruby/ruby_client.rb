# add '.' and './lib' to load path
$LOAD_PATH << '.' << './lib' << './models'

require 'swagger'
require 'api_api' # aka email_api
require 'targetemailrequest'

Swagger.configure do |config|
  config.api_key = 'iterableApiKey' 
  config.host = 'localhost:9000'
  config.base_path = '/'  # maybe /api
  config.format = 'json'
end

# request
ter = TargetEmailRequest.new
ter.campaign_id = 3
ter.recipient_email = 'girish@iterable.com'
ter.inline_css = false

puts ter.inspect
response = Api_api.target(ter)
