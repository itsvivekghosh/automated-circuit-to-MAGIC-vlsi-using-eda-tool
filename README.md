# Automated Circuit to MAGIC VLSI using Open-Source EDA Tools by Python.

__Project Name:__ Automated Circuit To MAGIC VLSI layout Using Open Source EDA Tools by __IITG, Guwahati__.<br>
<i>This project aims to convert a circuit into its MAGIC Layout format using a circuit as an input. </i>

<h3>About MAGIC Layout Tool: </h3>
<p>MAGIC is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow. <a href="http://opencircuitdesign.com/magic/">More info</a></p>

__Our Task:__
Our Task is to generate a VLSI Layout as an Output when given any Input Circuit. We can use Netlist, DRS files, LibreCell layouts as inputs to the file thus generating a VLSI Layout using the Algorithm.

__Working:__

<h4>
Input File(.sp)  =====>  Layout Tool having Rules  ====>  Layout (.mag, .gds)
</h4>


__Steps Involved :__

- Installing Necessary Tools and Softwares
- Creating a Virtual Envionment
- Installing LibreCell Tool using git Command and MAGIC Tool
- Applying DRC Rules
- Generating the Output file


## Downloading Our Requirements 

__For Ubuntu:__

Install NgSpice Tool using: 
```
sudo pacman -S install ngspice z3
```

Install python using: 
```
sudo apt-get install python3
```

Install MAGIC Tool using:

```
sudo apt-get install magic
```

## GETTING INTO PROCESS:

__Setting up the Virtual Envirnment:__<br>
Using commands we set up the virtual environment<br>
For installing Virtual Environment we can using the command:
`py -m pip install --user virtualenv`

```
python3 -m venv myProject
```

__INSTALLING LIBRECELL:__

Inorder to Download & Install LibreCell from git, use this command:
```
git clone https://codeberg.org/tok/librecell.git

cd librecell
```

```
cd librecell-common

python3 setup.py develop

cd ..
```

```
cd librecell-layout

python3 setup.py develop

cd ..
```

```
cd librecell-lib

python3 setup.py develop

cd ..
```
Verify LibreCell is Properly Installed or Not by using:
`librecell --h`

For more details for installing please visit <a href="https://codeberg.org/tok/librecell#:~:text=Installing%20from%20git&text=Install%20from%20git%3A,setup.py%20develop%20cd%20..">this</a> Link

<h3>Make a Project Directory by using:</h3>
 `mkdir /myProject`
 
 
 ## CONVERSION COMMAND:
 
 The Running Command Can be used as:
 ```
 lclayout --output-dir [Output Directory] --tech [design_file.py] --netlist [Spice_Netlist_file.sp] --cell [Cell_Name]
 ````
 
The `LATCH.sp` file is used as an Spice NetList input file. Bu using `--cell LATCH` command to run the file.  <br>__For Example:__
 ```
 lclayout --output-dir /home/user/MyProjects --tech /home/user/Desktop/MyProjects/LATCH/librecell_tech.py --netlist /home/user/Desktop/MyProjects/LATCH.sp --cell LATCH
 ```
 
 ## MAGIC LAYOUT:  
 
 __Initializing LATCH:__ We can run `magic <MAG_File>.mag` figure out MAGIC is installed in our System or Not.
 For more information about the error generated, visit <a href="https://www.systutorials.com/docs/linux/man/5-mag/">this</a> page
 
 Use this command to generate the layout:
 ```
 magic LATCH.mag
 ```
 
 <h6>Output: </h6>
 
 <img src ="https://github.com/itsvivekghosh/automated-circuit-to-MAGIC-vlsi-using-eda-tool/blob/master/Images/LATCH.png">
 
__@About Author:__<br>
 <p>`Vivek Kumar Ghosh`, B.Tech (Computer Science Engineering), `Uttaranchal University, Dehradun`. 
 E-mail:- `soapmactevis1@gmail.com`</p>
