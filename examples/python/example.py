import requests
import json

NSQ_HOST = 'https://<PROJECT_NAME>.up.railway.app'

# Create topic
topic_name = 'test_topic'
url = f'{NSQ_HOST}/topic/create?topic={topic_name}'
response = requests.post(url)

channel_name = 'test_channel'
# Create the channel
url = f'{NSQ_HOST}/channel/create?topic={topic_name}&channel={channel_name}'
requests.post(url)

# Publish message
msg = {'text': 'Hello World'}
data = json.dumps(msg)
url = f'{NSQ_HOST}/pub?topic={topic_name}'
response = requests.post(url, data=data)
