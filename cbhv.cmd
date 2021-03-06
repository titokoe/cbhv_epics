# This file was created mainly using the instructions on the
# streamDevice website
# (https://www.slac.stanford.edu/grp/cd/soft/epics/site/streamdevice/).

# The following line locates the .dbd file

dbLoadDatabase "O.Common/streamApp.dbd"
streamApp_registerRecordDeviceDriver
#streamApp

# The next line specifies the path where the protocol file is located.

epicsEnvSet "STREAM_PROTOCOL_PATH", "."

# The following lines define the hostnames of the hv distribution
# boxes and the expression that refers to them in the .db files (name
# shema: termBox<boxnumber>).

drvAsynIPPortConfigure "termBox1", "CBHV01.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox2", "CBHV02.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox3", "CBHV03.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox4", "CBHV04.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox5", "CBHV05.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox6", "CBHV06.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox7", "CBHV07.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox8", "CBHV08.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox9", "CBHV09.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox10", "CBHV10.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox11", "CBHV11.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox12", "CBHV12.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox13", "CBHV13.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox14", "CBHV14.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox15", "CBHV15.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox16", "CBHV16.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox17", "CBHV17.online.a2.kph.:23"
drvAsynIPPortConfigure "termBox18", "CBHV18.online.a2.kph.:23"

# Box 19 is not used as testbox, in case it is needed within this IOC
# the following line can be uncommented.

#drvAsynIPPortConfigure "termBox19", "CBHV19.online.a2.kph.:23"

# This line below shows how singel .db files can be loaded. Moreover
# it illustrates the use of macros. For example using the expresion
# $(PROTO) somewhere in the file cbhvtest.db, it is autmaticallly
# replaced with the expression 'cbhvtest.proto' at runtime.

#dbLoadRecords "cbhvtest.db","PROTO=cbhvtest.proto,P=CB:HV,BOXNO=19,LEVELNO=1,CHANNELNO=1"

# The next line shows how to load a .sub file.

dbLoadTemplate "cbhv.sub"

# The next expression causes the IOC to start using all of the above
# definitions.

iocInit
# var streamDebug 1
