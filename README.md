# Vosk4lLinux
VOSK is an offline Speech Recognition system. i.e. it is designed to recognize your spoken text on the device itself without the need to submit your spoken audio ot a remote server.

## Linux Distro - Installation Script
Installation script supports you in setting up VOSK for python test environment for Linux. This repository is similar to the provided [Jamulus install script](https://jamulus.io/kb/2020/09/20/Linux-Install-Script.html) (see [generic example scripts](https://github.com/niebert/jamulus/tree/master/distributions) that are applied for VOSK as well in a similar way), that allows creates tailored installation scripts for different Linux distribution, these scripts aggregate the adapted scripts for VOSK offline speech recognition.

## Basic Installation
The basic installation shows how to prompt the users if the want to install
* VOSK for Python
* the VOSK API
* incorporates the selection of small or large language models
* install PyCharm as integrated developer environments
* perform a test recognition by providing VOSK a WAV file with spoken numbers.

The installation ist based on the documentation for VOSK at https://alphacephei.com/vosk/install

## Check the Bash Script
Check the bash script prior to execution (e.g. [`bash vosk4arch_basic.sh`](arch/vosk4arch_basic.sh)) if the installation command meet your requirements expectation.
If you are OK with the installation procedures perform the script for your Linux distribution, e.g. [`bash vosk4arch_basic.sh`](blob/main/arch/vosk4arch_basic.sh) to perform the basic VOSK installation on an [Arch Linux](https://archlinux.org/).

### Arch/Manjaro
* **[Basic Installation - Arch](arch/vosk4arch_basic.sh)** - tested on [Arch Linux](https://archlinux.org/) and [Manjaro](https://manjaro.org/).
