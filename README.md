# Automated Circuit to MAGIC VLSI using Open-Source EDA Tools by Python.

__Project Name:__ Automated Circuit To MAGIC VLSI layout Using Open Source EDA Tools by __IITG, Guwahati__.<br>
<i>This project aims to convert a circuit into its MAGIC Layout format using a circuit as an input. </i>

<h3>About MAGIC Layout Tool: </h3>
<p>MAGIC is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow. <a href="http://opencircuitdesign.com/magic/">More info</a></p>

__Our Task:__
Basically if we are representing a circuit into code format then using some coding algorithm we can implement its magic VLSI layout.
So, here circuit netlist,design rules, librecell layout are used to generate output.


__Working:__

<h4>
Input File  =====>  Layout Tool having Rules  ====>  Layout (.mag, .gds)
</h4>


__Steps Involved :__

- Installing python3, NgSpice, Z3 Solver
- Preparing a python virtual environment
- Installing librecell using git (Git Link in the description)
- Applying Rules Commands 
- Installing MAGIC tool.


## Downloading Our Requirements 

__For Ubuntu:__

Command to install NgSpice software : 
```
sudo pacman -S install ngspice z3
```

To install python3 : 
```
sudo apt-get install python3
```

To install MAGIC Tool:

```
sudo apt-get install magic
```

Verify all installed softwares and tools by using:

- Type `ngspice` for ngspice; 
- Give command `z3 --help` for z3 solver;
- Give command `python3` for python.


__Setting up the Virtual Envirnment:__<br>
Using commands we set up the virtual environment<br>
For installing Virtual Environment we can using the command:<br>
`py -m pip install --user virtualenv`

```
python3 -m venv myProject

source ./myProject/bin/activate
```

## INSTALLING LIBRECELL

Now we need to install librecell from git .
Commands to download & install :

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

Verify LibreCell is installed use :
`librecell --h`

If terminal is showing information or `--help` command then librecell is installed.

We need to make a seperate directory for librecell folder if not present else we have to change the directory by using:
 `cd librecell-layout`
 
 
 Make directory :
 'mkdir /tmp/myProjectDir'
 
 ## CONVERSION COMMAND:
 
 ```
 lclayout --output-dir [Output Directory] --tech [design_file.py] --netlist [Spice_Netlist_file.sp] --cell [Cell_Name]
 ````
 
 I have used dummy_tech.py file as Design file. Using AND2X1.sp OR LATCH.sp as Spice Netlist File. We can use --cell AND2X1  OR   --cell LATCH.
 File name must be with location of file.<br>
 
 __Example:__ The Project Directory is in Desktop
 ```
 lclayout --output-dir /home/user/Desktop --tech /home/user/Desktop/librecell_tech.py --netlist /home/user/Desktop/cells.sp --cell LATCH
 ```
 OR 
 
 ```
 lclayout --output-dir /tmp/mylibrary --tech examples/dummy_tech.py --netlist examples/cells.sp --cell AND2X1
 ```
 
 ## MAGIC LAYOUT:  
 
 __Checkpoint 3 :__ To make sure MAGIC is installed make a file of magic using `magic checkpoint3.mag`
 If MAGIC with blank project is opened then MAGIC is installed.
 
 __1. AND2X1 : I have used AND2X1 Spice Netlist & cell to generate layout of AND2X1.__
 
 Use this command to generate the layout:
 
 ```
 magic AND2X1.mag
 ```
 
 <h6>Output AND2X1:</h6>
 
 <img src ="https://github.com/itsvivekghosh/automated-circuit-to-MAGIC-vlsi-using-eda-tool/blob/master/Images/Output_AND2X1_SS.png">
 
 __2. LATCH : I have used LATCH Spice Netlist & cell name to generate layout of LATCH.__
 
 Use this command to generate the layout:
 ```
 magic LATCH.mag
 ```
 
 <h6>Output LATCH:</h6>
 
 <img src ="https://github.com/itsvivekghosh/automated-circuit-to-MAGIC-vlsi-using-eda-tool/blob/master/Images/LATCH.png">
 
 ## Input & Output Files:
 We can use Spice Netlist Files to form a Layout by using a Cell Name<br>
 
 Input files used :   
 - Spice netlist [.sp]
 - Python file [.py]
 - Cell Name (LATCH, AND4, etc.)
                      
 Output Files obtained :  
 - Graphic Database System File [.gds]
 - Library Exchange Format [.lef]
 
 ## Contact Information 
 
 - Vivek Kumar Ghosh, B.Tech [Computer Science Engineering], Uttaranchal University, Dehradun. soapmactevis1@gmail.com
 - Philipp Guhring, Software Architect at Libresilicon Association. pg@futureware.at
 - Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalpghosh@gmail.com
