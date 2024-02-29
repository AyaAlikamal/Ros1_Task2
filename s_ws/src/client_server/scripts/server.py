#!/usr/bin/env python3
import rospy
from client_server.srv import mult, multResponse

def callback(req):
    decrypted = "" 
    for i in range(len(req.characrer)):  
       decrypted += chr(req.b ^ ord(req.characrer[i]))
    rospy.loginfo("The recived data is %s, and key is %x", req.characrer, req.b)
    rospy.loginfo("The recived data after decryption is %s", decrypted)
    return multResponse(decrypted)

rospy.init_node("server")
rospy.Service("my_service", mult, callback)
rospy.spin()
 

 
