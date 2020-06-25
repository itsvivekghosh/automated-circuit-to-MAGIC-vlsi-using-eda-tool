# Automated_Circuit_To_MAGIC_VLSI
Project Name: Automated Circuit To MAGIC VLSI layout Using Open Source EDA Tools by IIT Guwahati.<br>
This project aims to convert a circuit into its MAGIC Layout format using a circuit as an input. 

<h5>MAGIC software is a open source EDA tool which is used for making layout of circuit. </h5>

Basically if we are representing a circuit into code format then using some coding algorithm we can implement its magic VLSI layout.
So, here circuit netlist,design rules, librecell layout are used to generate output.

Working:

Input files [Spice Netlist + Design Rules]   ----->   Librecell Layout as Conversion tool    ----->    Output i.e Layout [GDS,LEF,MAG]

We can generate spice netlist of any circuit using circuit design tools,open source EDA tools. Design rules are the rules which are associated with ƛ rule used in stick diagram, layout. Stick diagram represents layer information through color code. Layout consists of contacts, metal, polysilicon, etc. This layers are represented using color code in stick diagram.


__Steps Involved :__

- Installing Python3, Ngspice, Z3Spice
- Creating a python virtual environment using `py -m pip install --user virtualenv`
- Installing librecell using git (Git Link in the description)
- Applying Rules Commands 
- Installing MAGIC To see Layout

### Downloading Python3, Ngspice, Z3 Solver 

__For Ubuntu:__

Command to install ngspice & install  is : 
```
sudo pacman -S install ngspice z3
```

To install python3 use following command : 
```
sudo apt-get install python3
```

To download MAGIC :

```
sudo apt-get install magic
```

To check whether all tools are installed:

__Checkpoint1 :__
- Type `ngspice` for ngspice; 
- Give command `z3 --help` for z3 solver;
- Give command `python3` for python.


__Setting up the Virtual Envirnment:__
Using following commands we can work on python virtual envrionment

```
python3 -m venv my-librecell-env

source ./my-librecell-env/bin/activate
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

__Checkpoint 2:_

To make sure that Librecell is installed or not use command :
`librecell --h`

If terminal is showing information or help commands then librecell is installed.

Next we need to deal with actual files that is spice netlist files, tech files, directories,etc.
 We need to make directory in lbrecell layout folder.
 Make sure that you are in librecell folder right now [From librecell folder we will go to librecell-layout]
 
 `cd librecell-layout`
 
 Make directory :
 'mkdir /tmp/mylibrary'
 
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
 
 i. AND2X1 : I have used AND2X1 Sspice netlist & cell to generate layout of AND2X1.
 
 Use command to generate layout 
 
 ```
 magic AND2X1.mag
 
 ```
 
 Output AND2X1 :
 
 <img src ="https://github.com/itsvivekghosh/automated-circuit-to-MAGIC-vlsi-using-eda-tool/blob/master/Images/Output_AND2X1_SS.png">
 
 ii. LATCH : I have used LATCH spice netlist & cell name to generate layout of LATCH.
 
 ```
 magic LATCH.mag
 
 ```
 
 Output LATCH:
 
 <img src ="https://github.com/itsvivekghosh/automated-circuit-to-MAGIC-vlsi-using-eda-tool/blob/master/Images/LATCH.png">
 
 [Hit CTRL if cursor is blinking again & again & Make sure that ouput gd files is stored on Desktop]
 
 ### Input & Output Files
 
 So using librecell we get to know that we can convert spice netlist to its layout.
 
 Input files used :   
 - Spice netlist [.sp]
 - Tech file [.py]
 - cell name
                      
 Output Files obtained :  
 - Graphic Database System File .gds]
 - Library Exchange Format [.lef]
 
 ## Contact Information 
 
 - Vivek Kumar Ghosh, B.Tech [Computer Science Engineering], Uttaranchal University, Dehradun. soapmactevis1@gmail.com
 - Philipp Guhring, Software Architect at Libresilicon Association. pg@futureware.at
 - Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalpghosh@gmail.com
# automated-circuit-to-MAGIC-vlsi-using-eda-tool
