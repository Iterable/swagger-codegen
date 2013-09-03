# Example showcasing adding attachments

from python3 import *
from python3.models import *

import base64

apiUrl = 'http://api.iterable.com'
apiKey = 'YOUR_API_KEY'

client = swagger.ApiClient(apiKey, apiUrl)
emailApi = ApiApi.ApiApi(client)

filename = 'test.pdf'
fh = open(filename, 'rb')
contentBytes = bytearray(fh.read())

attachmentEntry = AttachmentEntry.AttachmentEntry()
attachmentEntry.content = base64.b64encode(contentBytes).decode("ASCII")
attachmentEntry.name = filename
attachmentEntry.mimeType ='application/octet-stream'

targetEmailRequest = TargetEmailRequest.TargetEmailRequest()
targetEmailRequest.campaignId = 1
targetEmailRequest.recipientEmail = 'justin@iterable.com'
targetEmailRequest.attachments = [attachmentEntry]

response = emailApi.target(targetEmailRequest)

print(response)
