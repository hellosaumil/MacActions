import os, sys, json
from datetime import datetime
from os.path import expanduser
home = expanduser("~")

actions_path = home+"/Dropbox/IFTTT/MacActions/"
actions_file = 'mac-status.txt'
log_path = home+"/Dropbox/IFTTT/Logs/"
log_file = 'log_file.txt'

def log_message(msg):
    f = open( log_path+log_file, 'a+')
    f.write("\n"+str(msg))
    f.close()

    os.remove( actions_path+actions_file )

z = json.loads( '{' + open( actions_path+actions_file ).read() +'}' )

tX = max([a for a in z])
print z[tX]['Status']

log_message(z)
