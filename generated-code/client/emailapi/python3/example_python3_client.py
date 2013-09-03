from python3 import *
from python3.models import *

apiUrl = 'http://localhost:9000'
apiKey = 'iterableApiKey'

client = swagger.ApiClient(apiKey, apiUrl)

emailApi = ApiApi.ApiApi(client)

targetEmailRequest = TargetEmailRequest.TargetEmailRequest()
targetEmailRequest.campaignId = 3
targetEmailRequest.inlineCss = False
targetEmailRequest.recipientEmail = 'girish@iterable.com'

response = emailApi.target(targetEmailRequest)

# print response
