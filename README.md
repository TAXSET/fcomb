<div id="top"></div>

<br />
<div align="center">
  <h3 align="center">fcomb</h3>

  <p align="center">
    Merge contents of multiple files into one.
    <br />
    <br />
    <a href="/issues/new?template=bug_report.md">Report Bug</a>
    ·
    <a href="/issues/new?template=feature_request.md">Request Feature</a>
  </p>
</div>



<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#requirements">Requirements</a></li>
    <li><a href="#installation">Installation</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



## Requirements

This script should run on most Linux distros. You'll need to have access to Bash (duh).



## Installation

* Download the latest release zip.
* Extract the archive contents into a folder
* Allow execution of scripts (eg. with `chmod 700 fcomb-interactive.sh`) 


## Usage

### Running the script
```bash
# Run the interactive script
./fcomb-interactive.sh
```

### Inputs / Settings

![image](https://user-images.githubusercontent.com/40140669/174452933-7db559aa-4c5c-4e09-b610-f9a49e7a8ce7.png)


* Source file directory: Path to directory containing the files that should be combined.
* Output directory: Directory that the combined file will be written to.
* Seperate contents with file names?: Wether or not to include the originals file name as a "heading" before its content in the combined file.

### Overview

![image](https://user-images.githubusercontent.com/40140669/174452845-864d0649-3e38-47a3-aa68-712d41a8d9c9.png)

Before starting the merge process, please check the info displayed in the overview.



## License

Distributed under the GNU General Public License v3.0. See `LICENSE.txt` for more information.



## Acknowledgments

Helpful resources and projects that helped bring this project to life:

* [Best-README-Template](https://github.com/othneildrew/Best-README-Template)

