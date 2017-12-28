import os, sys, json
from datetime import datetime
from os.path import expanduser
home = expanduser("~")

actions_path = home+"/Dropbox/IFTTT/MacActions/"
actions_file = 'mac-status.txt'
log_path = home+"/Dropbox/IFTTT/Logs/"
log_file = 'log_file.txt'

def log_message(msg):

    # print "\nMessage : ",msg

    f = open( log_path+log_file, 'a+')
    f.write("\n"+str(msg))
    f.close()

    os.remove( log_path+actions_file )


z = json.loads( '{' + open( actions_path+actions_file ).read() +'}' )

# print [a for a in z]
#
# t1 = 'December 16, 2017 at 02:26AM'
# x1 = datetime.strptime(t1, "%B %d, %Y at %H:%M%p")
#
# t2 = 'December 16, 2017 at 02:32AM'
# x2 = datetime.strptime(t2, "%B %d, %Y at %H:%M%p")
#
# t3 = 'December 16, 2017 at 02:38PM'
# x3 = datetime.strptime(t3, "%B %d, %Y at %H:%M%p")
# print max(t1, t2, t3)

tX = max([a for a in z])

# print "\nLatest TimeStap is : ",tX, "and the Status is : ",z[tX]['Status']
# print "Status : ",z[tX]['Status']
print z[tX]['Status']

log_message(z)
