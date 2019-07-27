#!/usr/bin/python3
import sys, os, cgi, hashlib, getpass, subprocess, traceback

print ("Content-Type: text/html\n");
print (os.environ ['REMOTE_USER'])
