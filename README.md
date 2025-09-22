# MiSTer Doctor

## Intro

Tooling to diagnose hardware issues in the [MiSTer](https://mister-devel.github.io/MkDocs_MiSTer/). **Still a POC**.

We don't write the tools. We compile them and wrap and orchestrate their execution in a convenient process. Credits due to the projects in use here.

Not affiliated with the fine folks of the MiSTer project. 

<img src="docs/assets/image.png" alt="MiSTer Doctor" width="300">

## Problem

Not all users are comfortable in a Linux terminal and not all tools are readily available to use in MiSTer.

## Vision

To provide a single executable (triggered via the UI), and a self-contained boot environment, to automatically detect hardware issues in [MiSTer](https://mister-devel.github.io/MkDocs_MiSTer/) builds.

## Status

- Very early stage / POC
- Currently just a wrapper to run [stress-ng](https://github.com/ColinIanKing/stress-ng)

## How to run 

### Executable

1. Download a release
2. Drag and drop the file to the `/Scripts` folder in the SD card
3. Turn off the MiSTer, and turn on again
4. In the MiSTer menu, go to scripts, and run the script you downloaded
5. Running will take a while. You will see a blue dialog screen when it finishes (successfully)
  <img src="docs/assets/finished_message.png" alt="Finished message" width="300">
  
6. Test results can be reviewed in the `logs` folder of your SD card

### Self-contained image

Currently work in progress.

## Developing

See [Developing](./docs/Developing.md).
