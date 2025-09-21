# MiSTer Doctor

Community tooling to diagnose hardware issues in the [MiSTer](https://mister-devel.github.io/MkDocs_MiSTer/). **Still a POC**.

Not affiliated with the fine folks of the MiSTer project. 

<img src="docs/image.png" alt="MiSTer Doctor" width="300">

## Problem

Not all users are comfortable in a Linux terminal and not all tools are readily available to use in MiSTer.

## Vision

To provide a single executable (triggered via the UI), and self-contained boot environment, to automatically detect hardware issues in [MiSTer](https://mister-devel.github.io/MkDocs_MiSTer/) builds.

## Status

- Very early stage / POC
- Currently just a wrapper to run [stress-ng](https://github.com/ColinIanKing/stress-ng)

## How to run 

### Executable

1. Download a release
2. Drag and drop the file to the `/Scripts` folder in the SD card
3. Turn off the MiSTer, and turn on again
4. In the MiSTer menu, go to scripts, and run the script you downloaded
5. You will find test results in the `logs` folder of your SD card

### Self-contained image

Currently work in progress.

## Developing

See [Developing](./docs/Developing.md).
