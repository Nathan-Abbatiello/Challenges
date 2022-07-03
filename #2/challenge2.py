
# A script to retrieve metadata from an ec2 instance 
import boto3
import json

# attribute to retrieve from metadata
attr = 'InstanceId'
# id of instance
instance = "i-0ae6b498dded49eba"
# test keys
ACCESS_KEY = ""
SECRET_KEY = ""

#  start client
client = boto3.client('ec2', aws_access_key_id=ACCESS_KEY,aws_secret_access_key=SECRET_KEY)

# data request
ec2=client.describe_instances(InstanceIds=[instance])

#  filter data
for inst in ec2['Reservations']:
  for filtersh in inst['Instances']:
   print(json.dumps(filtersh[attr])) 