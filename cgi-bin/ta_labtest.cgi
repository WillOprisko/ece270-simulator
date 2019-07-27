#!/usr/bin/python3
import os, cgi

print ("Content-Type: text/html\n");
print ("Access-Control-Allow-Origin: https://engineering.purdue.edu\n")
print (os.environ.items())
