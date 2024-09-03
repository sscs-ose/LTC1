·         All the files are in the " PAKISTAN2_PLL_FINAL " Folder.

·         There are further three folders: Xschem, Magic and Netgen

·         In Xschem folder all the schematics (.sch) are placed.
          In Magic Folder all the layout files (.mag) are placed  

Schematic Files Deatils
inside Xschem folder Top Testbech for the schematic 
From this file can go to down hierarchy  and each and every schematic can be seen.


Test Bench:         "PLL_13_TB.sch" 
Top schematic:      "PLL_FINAL_SCH.sch"
  
Here are the some of the major blocks file 

Current Source:     Current_Mirror_Top.sch
Muxes:
                    2x1_mux_ibr.sch.sch
                    4x1_mux_ibr.sch.sch
                    8x1_mux_ibr.sch.sch
Phase Detector:     PFD.sch
Charge Pump:        CP.sch
Loof Filter:        LF.sch
Analog Muxes: 
                    a2x1_mux.sch
                    A_MUX.sch

VCO:                VCO.sch
                    Delay_Cell.sch
Dividers:
                    Feedback_Dividier.sch
                    Output_Divider.sch
                    Prescaler_Divider.sch

" Layout Files Details "


inside magic folder Top magic file for  
From this file can go to down hierarchy  and each and every layout can be seen.

Top Magic File:         "pll_4_mag.mag" 

Here are the some of the major blocks file 

Current Source:     Current_Mirror.mag
Muxes:
                    mux_2x1_ibr.mag
                    mux_4x1_ibr.mag
                    mux_8x1_ibr.mag
Phase Detector:     PFD_layout.mag
Charge Pump:        CP_mag_P2.mag
Loof Filter:        LF_mag.mag
Analog Muxes: 
                    a2x1_mux_mag.mag
                    A_MUX_mag_P2

VCO:                VCO_mag
Dividers:
                    Feedback_Dividier_mag.mag
                    Output_Divider_mag.mag
                    Prescaler_Divider_mag.mag

Pex files:
For each and every block the pex files are also provided in the same Xschem folder. in order to simlulate the Post layout Simulation for PLL, one have to go inside Xschem folder and find pex_pll_13_mag_TB.sch

Note: To access/check any other block post simulation the file starting with the "pex_filename_tb.sch" can go to desired file. for example in order to check the post layout simulations of Pre scaler Divider goto Xschem/pex_output_divider_tb.sch and the crossponding pex files will be found.

GDS File:
In the main folder PAKISTAN2_PLL_FINAL gds file is provided as
" PAKISTAN2_PLL_FINAL.gds "

To run the test bench 
Open Xschem folder 
In the xschem folder open the terminal 
Write Xschem in terminal 
When Xchem open, click on Open File, a small window will pop up
Now click on the PLL_13_TB.sch 
 To run the simulation click on netlist and then on simulate.
Here all the small block of the design are present and by moving down in hierarchy one can check each block

All the layout files are placed in the magic folder.
Name are same with and additional word PLL_FINAL_MAG.mag 
To open layout 
Open magic  folder 
In the magic folder open the terminal 
Write magic –d OGL  in terminal 
When magic window open, click on Open File, a small window will pop up
Now click on the pll_13_mag.mag 
Here all the small block of the design are present and by moving down in hierarchy one can check each block

Pex files:
For each and every block the pex files are also provided in the same Xschem folder. in order to simlulate the Post layout Simulation for PLL, one have to go inside Xschem folder and find pex_pll_13_mag_TB.sch

Note: To access/check any other block post simulation the file starting with the "pex_filename_tb.sch" can go to desired file. for example in order to check the post layout simulations of Pre scaler Divider goto Xschem/pex_output_divider_tb.sch and the crossponding pex files will be found.

