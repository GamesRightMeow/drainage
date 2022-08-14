# Drainage
A tool for draining your Playdate's battery.

## Install
Download the [latest release](https://github.com/GamesRightMeow/drainage/releases) or [build](#build) the project locally. Then refer to [the official Panic documentation about sideloading games](https://help.play.date/games/sideloading/).

## Build
If using VS Code, there are 3 tasks configured in [tasks.json](/.vscode/tasks.json):
- `buildPdx`: builds the PDX from the `src` folder.
- `runSimulator`: runs the built PDX in the Playdate Simulator.
- `buildRunSimulator`: runs `buildPdx` then `runSimulator`.

Otherwise, see [the official Panic documentation on compiling and running a Playdate project](https://sdk.play.date/Inside%20Playdate.html#_compiling_a_project).