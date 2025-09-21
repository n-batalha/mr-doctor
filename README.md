# MiSTer Doctor

Not affiliated with the fine folks with the MiSTer project. 

## Problem

Not all users are comfortable in a Linux terminal and not all tools are readily available to use in MiSTer.

## Vision

To provide a single executable (triggered via the UI), and self-contained boot environment, to automatically detect hardware issues in [MiSTer](https://mister-devel.github.io/MkDocs_MiSTer/) builds.

## Status

- Very early stage / POC
- Currently just a wrapper to run [stress-ng](https://github.com/ColinIanKing/stress-ng) (bootable environment not published yet)

## How to run 

1. Download a release
2. Drag and drop the file to the `/Scripts` folder in the SD card
3. Turn off the MiSTer, and turn on again
4. In the MiSTer menu, go to scripts, and run the script you downloaded

## Developing

See [Developing](./docs/Developing.md).
