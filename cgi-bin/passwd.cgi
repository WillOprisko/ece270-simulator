#!/usr/bin/python3
import sys, os, cgi, hashlib, getpass, subprocess, traceback

print ("Content-Type: text/html\n");
data = open ('userhash', 'r').read().split ("\n")

if not hashlib.sha1 (os.environ ['REMOTE_USER'].encode()).hexdigest() in data:
    print ("INVALID")
    sys.exit (1)
else:
    data = cgi.FieldStorage()
    cmdline = '/usr/bin/htpasswd -i -B -b /home/menon18/ispmach_cgi_approach/.htpasswd ' + os.environ ['REMOTE_USER'] + " " + data ['password'].value
    # print (cmdline)
    try:
        out = subprocess.check_output (cmdline.split (' '))
        print ("SUCCESS")
    except Exception as e:
        print ("UNIXERROR")
