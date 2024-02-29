#!/usr/bin/env python3
import rospy
import random
from client_server.srv import mult, multRequest

rospy.init_node("client")

client = rospy.ServiceProxy("my_service", mult)
client.wait_for_service()

request = multRequest()
request.b = random.randint(0, 10)  # Use random.randint() for generating a random integer
request.characrer = "Hello world"

response = client(request)
#print(response.characrer ) # Print the decrypted message from the response
