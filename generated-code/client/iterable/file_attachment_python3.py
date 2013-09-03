# Example showcasing adding attachments

from python3 import *
from python3.models import *
import base64

apiKey = 'YOUR_API_KEY'
campaignId = 10000 # set the desired campaignid

apiUrl = 'http://api.iterable.com'
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
targetEmailRequest.campaignId = campaignId
targetEmailRequest.recipientEmail = 'justin@iterable.com'
targetEmailRequest.attachments = [attachmentEntry]

response = emailApi.target(targetEmailRequest)

print(response)
