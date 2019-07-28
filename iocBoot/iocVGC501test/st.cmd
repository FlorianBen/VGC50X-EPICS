#!../../bin/linux-x86_64/VGC501test

#- You may have to change VGC501test to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/db" 
epicsEnvSet "IP" "192.168.1.31"
epicsEnvSet "IPport" "8000"

epicsEnvSet "P" "VGC501:"
epicsEnvSet "R" "IPMTB:"

## Register all support components
dbLoadDatabase "dbd/VGC501test.dbd"
VGC501test_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure("L0","$(IP):$(IPport)",0,0,0) 
epicsThreadSleep(2)

# Debug Asyn
dbLoadRecords("db/asynRecord.db","P=$(P),R=$(R),PORT=L0,ADDR=0,IMAX=200,OMAX=200")

## Load record instances
dbLoadRecords("db/devVGC501.db","P=$(P),R=$(R),PORT=L0,A=0")
dbLoadRecords("db/devVGC501Gauge.db","P=$(P),R=$(R),G=1,PORT=L0,A=0")
dbLoadRecords("db/devVGC501Gauge.db","P=$(P),R=$(R),G=2,PORT=L0,A=0")
dbLoadRecords("db/devVGC501Gauge.db","P=$(P),R=$(R),G=3,PORT=L0,A=0")

cd "${TOP}/iocBoot/${IOC}"
iocInit

dbpf("$(P)$(R)ScanTimeEnum","1")

## Start any sequence programs
#seq sncxxx,"user=fbenedet"