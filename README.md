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

## Demo

https://user-images.githubusercontent.com/40140669/174454923-ea341cc9-ad71-483b-aaa1-6a2a7b68f9f4.mp4



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


#### Source file directory

Path to directory containing the files that should be combined.

**Example:** A source directory of `./directory/with/files/` will make the script take the contents of every file inside it and copy it to the combined file.

**Notes:** During the merge process, if an indexed file can not be accessed, its content will not be copied to the combined file while its line-spacing and filename heading will still be present.

#### Output file directory

Directory that the combined file will be written to. 

**Example**: An output directory of `./combined/` will create a new directory `./combined/` if it does not exist and create a new file `./combined/${UNIX_SECONDS}-combined.txt` inside it, where `${UNIUX_SECONDS}` is the unix timestamp of the moment the merge process was started (after the overview screen is confirmed). The timestamp is included to avoid accidental file conflicts.


#### Seperate contents with file names?

Whether or not to include the originals file name as a "heading" before its content in the combined file.

**Example:** 

No file heading:
```
Content of file A



Content of file B



Content of file C
```

With file heading:
```
directory/with/files/File A.txt:

Content of file A



directory/with/files/File B.txt:

Content of file B



directory/with/files/File C.txt:

Content of file C
```

### Overview

![image](https://user-images.githubusercontent.com/40140669/174452845-864d0649-3e38-47a3-aa68-712d41a8d9c9.png)

Before starting the merge process, please check the info displayed in the overview.



## License

Distributed under the GNU General Public License v3.0. See `LICENSE.txt` for more information.



## Acknowledgments

Helpful resources and projects that helped bring this project to life:

* [Best-README-Template](https://github.com/othneildrew/Best-README-Template)

