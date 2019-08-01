# Inficon VGC50X EPICS support

An EPICS soft support for the Inficon VGC50X gauge controller based on StreamDevice (WIP).

## Features

- [x] Basic data retrieval:
  - [x] Module information
  - [x] Network information
  - [x] Gauge information
  - [x] Continous streamed acquisition
  - [x] EPICS controlled acquisition
- [x] Controller configuration
  - [x] Display configuration
- [ ] Gauge configuration
  - No implemented, too related to gauge type
- [ ] Advanced settings

## Prerequisites

- EPICS base (tested with 7.0.2 and 3.15)
- Asyn (tested with 4.31)
- StreamDevice
- Control System Studio or Phoebus for OPIs

## Configuration

The RELEASE file must be edited according to your EPICS installation. As well, the StreamDevice module must be configured.

