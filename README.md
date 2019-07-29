# Inficon VGC50X EPICS support

An EPICS soft support for the Inficon VGC50X gauge controller based on StreamDevice (WIP).

## Features

- [ ] Basic data retrieval:
  - [x] Module information
  - [x] Network information
  - [x] Gauge information
  - [x] Continous streamed acquisition
  - [ ] EPICS controlled acquisition
- [ ] Gauge configuration
- [ ] Controller configuration
  - [x] Display configuration
- [ ] Advanced settings

## Prerequisites

- EPICS base
- Asyn
- StreamDevice
- Control System Studio or Phoebus for OPIs

## Configuration

The RELEASE file must be edited according to your EPICS installation. As well, the StreamDevice module must be configured. 
