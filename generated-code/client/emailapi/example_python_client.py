from python import *
from python.models import *

apiUrl = 'http://localhost:9000'
apiKey = 'iterableApiKey'

client = swagger.ApiClient(apiKey, apiUrl)

emailApi = ApiApi.ApiApi(client)

targetEmailRequest = TargetEmailRequest.TargetEmailRequest()
targetEmailRequest.campaignId = 2
targetEmailRequest.inlineCss = False
targetEmailRequest.recipientEmail = 'justin@iterable.com'
targetEmailRequest.dataFields = { "firstName" : "Justin", "friendsCount": 5, "array" : [1, 2, 3, 4] }

response = emailApi.target(targetEmailRequest)

print response
