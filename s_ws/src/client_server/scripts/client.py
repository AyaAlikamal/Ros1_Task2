#!/usr/bin/env python3
import rospy
import random
from client_server.srv import mult, multRequest

rospy.init_node("client")

client = rospy.ServiceProxy("my_service", mult)
client.wait_for_service()

request = multRequest()
request.b = random.randint(1, 50)
request.characrer = ""
encryption = "Hello world"
for i in range (len(encryption)):
   request.characrer += chr(ord(encryption[i]) ^ request.b)
rospy.loginfo("The sent data is %s, and key is %x", request.characrer, request.b)
rospy.loginfo("The sent data befor encrypting is %s", encryption)
response = client(request)