```
░█▀▄░█▀█░█▀▄░░░█▀█░█▀█░█▀█░█░░░█▀▀░█░█
░█▀▄░█▀█░█░█░░░█▀█░█▀▀░█▀▀░█░░░█▀▀░▀░▀
░▀▀░░▀░▀░▀▀░░░░▀░▀░▀░░░▀░░░▀▀▀░▀▀▀░▀░▀
```
## Bad Apple!!

![Design](assets/output.gif)  

Bad Apple rendered entirely in ASCII art and played straight in your Linux terminal  

This script runs natively in bash showing the [Bad Apple!!](https://youtu.be/9lNZ_Rnr7Jc?si=ROgXrVvdx13oKPM4) video


## Installation

```bash
git clone https://github.com/yasbtw/BadApple.git
cd BadApple && ./run.sh
```

## Usage
Just run the script and watch:
```bash
./run.sh
```

## Audio Playback

The script plays audio using whichever tool is available:

pw-play — used automatically if your distro runs PipeWire as its default audio server and has the PipeWire utility Most distros ship with this already so there's often nothing extra to install
mpg123 — used as a fallback if pw-play isn't available. Install it with your package manager

github.com/@yasbtw