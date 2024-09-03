·         All the files are in the " Pakistan3_Scope_MUX " Folder.

·         There are further four folders: Xschem, Magic, Netgen and GDS

·         In Xschem folder all the schematics (.sch) are placed in respective folders.
          In Magic Folder all the layout files (.mag) are placed in respective folders.

Schematic Files Deatils
inside Xschem folder named "Complete_Design" for the schematic
From this file can go to down hierarchy  and each and every schematic can be seen.

Test Bench:         "Complete_Design_TB.sch" 

Here are the some of the major blocks file 

Mux:                                   muxWnonovpclkTB.sch
Fully Differential Folded Cascode:     Folded_Cascode_Diff.sch
Folded Cascode:                        Folded_opamp_single.sch
Transimpedence Stage:                  transimpedence_block.sch
Programmable Gain Amplifier:           PGA_block.sch

" Layout Files Details "


inside magic folder Complete_PICO for  
From this file can go to down hierarchy  and each and every layout can be seen.

Top Magic File:         "comple_pico.mag" 

Here are the some of the major blocks file 

Mux:                                   MUX_8x1_Layout.mag
Fully Differential Folded Cascode:     Folded_Diff_Op_Amp_Layout.mag
Folded Cascode:                        fold_cascode_opamp_mag.mag
Transimpedence Stage:                  trans_block_mag.mag
Programmable Gain Amplifier:           PGA_block_mag.mag

Pex files:
For each and every block the pex files are also provided in the same Xschem folder.

Note: To access/check any other block post simulation the file starting with the "pex_filename_tb.sch" can go to desired file. 

GDS File:
In GDS folder gds files is provided as
" complete_pico_pakistan3.gds "

To run the test bench 
Open Xschem folder 
In the xschem folder goto Complete_Design folder and open the terminal 
Write Xschem in terminal 
When Xchem open, click on Open File, a small window will pop up
Now click on the Complete_Design_TB.sch.sch 
 To run the simulation click on netlist and then on simulate.
Here all the small block of the design are present and by moving down in hierarchy one can check each block

All the layout files are placed in the magic folder.
Name are same with and additional word pll_13_mag.mag 
To open layout 
Open magic  folder 
In the magic folder goto Complete_PICO folder and open the terminal 
Write magic –d OGL  in terminal 
When magic window open, click on Open File, a small window will pop up
Now click on the comple_pico.mag 
Here all the small block of the design are present and by moving down in hierarchy one can check each block



