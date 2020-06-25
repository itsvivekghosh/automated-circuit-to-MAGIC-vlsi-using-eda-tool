# Automated_Circuit_To_MAGIC_VLSI
__Project Name:__ Automated Circuit To MAGIC VLSI layout Using Open Source EDA Tools by __IITG, Guwahati__.<br>
<i>This project aims to convert a circuit into its MAGIC Layout format using a circuit as an input. </i>

<h3>About MAGIC Layout Tool: </h3>
<p>MAGIC is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow. </p>

Basically if we are representing a circuit into code format then using some coding algorithm we can implement its magic VLSI layout.
So, here circuit netlist,design rules, librecell layout are used to generate output.

__Working:__

<h4>
__Input File  =====>   Layout Tool having Rules  ====>  Layout (.mag, .gds)__
</h4>

__Steps Involved :__

- Installing yython3, NgSpice, Z3Spice
- Preparing a python virtual environment
- Installing librecell using git (Git Link in the description)
- Applying Rules Commands 
- Installing MAGIC tool

### Downloading Python3, Ngspice, Z3 Solver 

__For Ubuntu:__

Command to install NgSpice software : 
```
sudo pacman -S install ngspice z3
```

To install python3 : 
```
sudo apt-get install python3
```

To install MAGIC software:

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

### Installing LibreCell

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
 
 ### Conversion command
 
 ```
 lclayout --output-dir [Here your output will be stored] --tech [design_tech_file.py] --netlist [Spice_netlist.sp] --cell [Cell_Name]
 ````
 
 For example : Use dummy_tech.py file as design tech file.Use AND2X1.sp OR LATCH.sp as spice netlist file. Use corresponding cell name ex: --cell AND2X1   OR   --cell LATCH.
 
 File name must be with location of file. Ex : If my all files are stored in Desktop then I will use 
 ```
 lclayout --output-dir /home/user/Desktop --tech /home/user/Desktop/librecell_tech.py --netlist /home/user/Desktop/cells.sp --cell LATCH
 ```
 OR 
 
 ```
 lclayout --output-dir /tmp/mylibrary --tech examples/dummy_tech.py --netlist examples/cells.sp --cell AND2X1
 
 ```
 
 ### MAGIC Layout 
 
 Checkpoint 3 : To make sure MAGIC is installed make a file of magic using `magic checkpoint3.mag`
 If MAGIC with blank project is opened then MAGIC is installed.
 
 __1. AND2X1 : I have used AND2X1 Spice Netlist & cell to generate layout of AND2X1.__
 
 Use command to generate layout 
 
 ```
 magic AND2X1.mag
 ```
 
 Output AND2X1 :
 
 <img src ="https://github.com/itsvivekghosh/automated-circuit-to-MAGIC-vlsi-using-eda-tool/blob/master/Images/Output_AND2X1_SS.png">
 
 __2. LATCH : I have used LATCH Spice Netlist & cell name to generate layout of LATCH.__
 
 ```
 magic LATCH.mag
 ```
 
 Output LATCH:
 
 <img src ="https://github.com/itsvivekghosh/automated-circuit-to-MAGIC-vlsi-using-eda-tool/blob/master/Images/LATCH.png">
 
 ### Input & Output Files:
 
 So using librecell we get to know that we can convert spice netlist to its layout.
 
 Input files used :   
 - Spice netlist [.sp]
 - Tech file [.py]
 - cell Name (LATCH, AND4, etc.)
                      
 Output Files obtained :  
 - Graphic Database System File .gds]
 - Library Exchange Format [.lef]
 
 ## Contact Information 
 
 - Vivek Kumar Ghosh, B.Tech [Computer Science Engineering], Uttaranchal University, Dehradun. soapmactevis1@gmail.com
 - Philipp Guhring, Software Architect at Libresilicon Association. pg@futureware.at
 - Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalpghosh@gmail.com
