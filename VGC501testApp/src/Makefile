TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = VGC501test
# VGC501test.dbd will be created and installed
DBD += VGC501test.dbd

# VGC501test.dbd will be made up from these files:
VGC501test_DBD += base.dbd

# Include dbd files from all support applications:
VGC501test_DBD += stream.dbd
VGC501test_DBD += asyn.dbd
VGC501test_DBD += drvAsynIPPort.dbd
#VGC501test_DBD += drvAsynSerialPort.dbd

# Add all the support libraries needed by this IOC
VGC501test_LIBS += stream 
VGC501test_LIBS += asyn

# VGC501test_registerRecordDeviceDriver.cpp derives from VGC501test.dbd
VGC501test_SRCS += VGC501test_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
VGC501test_SRCS_DEFAULT += VGC501testMain.cpp
VGC501test_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#VGC501test_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
VGC501test_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

