-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/PLL_13_TB.sch
entity PLL_13_TB is
end PLL_13_TB ;

architecture arch_PLL_13_TB of PLL_13_TB is

component PLL_13 
port (
  Iref : inout std_logic ;
  LP_ext : inout std_logic ;
  VDD_BUFF : inout std_logic ;
  VDD : inout std_logic ;
  VDD_VCO : inout std_logic ;
  VSS : inout std_logic ;
  RST_DIV : in std_logic ;
  Vref : in std_logic ;
  S2 : in std_logic ;
  T0 : in std_logic ;
  S0 : in std_logic ;
  S1 : in std_logic ;
  F2 : in std_logic ;
  F0 : in std_logic ;
  T1 : in std_logic ;
  F1 : in std_logic ;
  OPA1 : in std_logic ;
  OPA0 : in std_logic ;
  OPB1 : in std_logic ;
  P1 : in std_logic ;
  OPB0 : in std_logic ;
  P0 : in std_logic ;
  Vo_test : in std_logic ;
  PD_test : in std_logic ;
  Vcntl_test : in std_logic ;
  PU_test : in std_logic ;
  Vdiv_test : in std_logic ;
  Output1 : out std_logic ;
  Output2 : out std_logic ;
  test_output : out std_logic ;
  LP_op_test : out std_logic
);
end component ;


signal Vref : std_logic ;
signal Vo_test : std_logic ;
signal Iref : std_logic ;
signal Vcntl_test : std_logic ;
signal vcntl_test : std_logic ;
signal Vdiv_test : std_logic ;
signal VDD : std_logic ;
signal VSS : std_logic ;
signal F0 : std_logic ;
signal F1 : std_logic ;
signal F2 : std_logic ;
signal P0 : std_logic ;
signal P1 : std_logic ;
signal S0 : std_logic ;
signal S1 : std_logic ;
signal S2 : std_logic ;
signal T0 : std_logic ;
signal T1 : std_logic ;
signal Output_test : std_logic ;
signal RST_DIV : std_logic ;
signal LP_ext : std_logic ;
signal net1 : std_logic ;
signal VDD_BUFF : std_logic ;
signal PU_test : std_logic ;
signal Output1 : std_logic ;
signal Output2 : std_logic ;
signal VDD_VCO : std_logic ;
signal GND : std_logic ;
signal PD_test : std_logic ;
signal OPA0 : std_logic ;
signal OPA1 : std_logic ;
signal OPB0 : std_logic ;
signal OPB1 : std_logic ;
signal LP_op_test : std_logic ;
begin
C1 : capa
generic map (
   m => 1 ,
   value => 1.0e-13 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => Output1 ,
   m => VSS
);

C2 : capa
generic map (
   m => 1 ,
   value => 1.0e-13 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => Output2 ,
   m => VSS
);

C3 : capa
generic map (
   m => 1 ,
   value => 1.0e-13 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => Output_test ,
   m => VSS
);

C5 : capa
generic map (
   m => 1 ,
   value => 1.0e-13 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => LP_op_test ,
   m => VSS
);

C4 : capa
generic map (
   m => 1 ,
   value => 8.014e-11 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => net1 ,
   m => VSS
);

C6 : capa
generic map (
   m => 1 ,
   value => 3.77e-12 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => LP_ext ,
   m => VSS
);

R2 : res
generic map (
   value => 48840 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => LP_ext ,
   M => net1
);

V1 : vsource
generic map (
   value => 0
)
port map (
   p => P1 ,
   m => VSS
);

V14 : vsource
generic map (
   value => 0
)
port map (
   p => P0 ,
   m => VSS
);

VCNTL : vsource
generic map (
   value => pulse(3.3 0 0 100p 100p 250n 500n)
)
port map (
   p => Vref ,
   m => VSS
);

V23 : vsource
generic map (
   value => PWL( 0 0 100n 0 100.001n 3.3)
)
port map (
   p => VDD_VCO ,
   m => VSS
);

V27 : vsource
generic map (
   value => 3.3
)
port map (
   p => VDD ,
   m => VSS
);

V28 : vsource
generic map (
   value => 0
)
port map (
   p => VSS ,
   m => GND
);

V29 : vsource
generic map (
   value => PWL( 0 0 10n 0 10.001n 3)
)
port map (
   p => RST_DIV ,
   m => VSS
);

V30 : vsource
generic map (
   value => 3.3
)
port map (
   p => F1 ,
   m => VSS
);

V31 : vsource
generic map (
   value => 3.3
)
port map (
   p => F0 ,
   m => VSS
);

V32 : vsource
generic map (
   value => 3.3
)
port map (
   p => F2 ,
   m => VSS
);

V33 : vsource
generic map (
   value => 3.3
)
port map (
   p => OPA0 ,
   m => VSS
);

V34 : vsource
generic map (
   value => 3.3
)
port map (
   p => OPA1 ,
   m => VSS
);

V35 : vsource
generic map (
   value => 3.3
)
port map (
   p => OPB0 ,
   m => VSS
);

V36 : vsource
generic map (
   value => 0
)
port map (
   p => OPB1 ,
   m => VSS
);

I3 : isource
generic map (
   value => 0.0001
)
port map (
   p => VDD ,
   m => Iref
);

V37 : vsource
generic map (
   value => 3.3
)
port map (
   p => S1 ,
   m => VSS
);

V38 : vsource
generic map (
   value => 3.3
)
port map (
   p => S0 ,
   m => VSS
);

V39 : vsource
generic map (
   value => 3.3
)
port map (
   p => S2 ,
   m => VSS
);

V40 : vsource
generic map (
   value => 0
)
port map (
   p => T1 ,
   m => VSS
);

V41 : vsource
generic map (
   value => 0
)
port map (
   p => T0 ,
   m => VSS
);

V42 : vsource
generic map (
   value => 1.08
)
port map (
   p => vcntl_test ,
   m => VSS
);

V43 : vsource
generic map (
   value => PWL( 0 0 10n 0 10.001n 3)
)
port map (
   p => Vo_test ,
   m => VSS
);

V44 : vsource
generic map (
   value => pulse(3.3 0 20n 100p 100p 50n 100n)
)
port map (
   p => Vdiv_test ,
   m => VSS
);

V45 : vsource
generic map (
   value => pulse(3.3 0 50n 100p 100p 75n 100n)
)
port map (
   p => PU_test ,
   m => VSS
);

V46 : vsource
generic map (
   value => pulse(3.3 0 0 100p 100p 75n 100n)
)
port map (
   p => PD_test ,
   m => VSS
);

x1 : PLL_13
port map (
   Iref => Iref ,
   LP_ext => LP_ext ,
   VDD_BUFF => VDD_BUFF ,
   VDD => VDD ,
   VDD_VCO => VDD_VCO ,
   VSS => VSS ,
   RST_DIV => RST_DIV ,
   Vref => Vref ,
   S2 => S2 ,
   T0 => T0 ,
   S0 => S0 ,
   S1 => S1 ,
   F2 => F2 ,
   F0 => F0 ,
   T1 => T1 ,
   F1 => F1 ,
   OPA1 => OPA1 ,
   OPA0 => OPA0 ,
   OPB1 => OPB1 ,
   P1 => P1 ,
   OPB0 => OPB0 ,
   P0 => P0 ,
   Vo_test => Vo_test ,
   PD_test => PD_test ,
   Vcntl_test => Vcntl_test ,
   PU_test => PU_test ,
   Vdiv_test => Vdiv_test ,
   Output1 => Output1 ,
   Output2 => Output2 ,
   test_output => Output_test ,
   LP_op_test => LP_op_test
);

V2 : vsource
generic map (
   value => 3.3
)
port map (
   p => VDD_BUFF ,
   m => VSS
);


.include VCO_PEX.spice
.control
save all
tran 20n 45u 
plot v(Output_test) v(LP_op_test)+4
plot v(Output1) v(Output1B)+4 v(Output2)+8
plot v(Vref)

**write PLL_test.raw
.endc


.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical

end arch_PLL_13_TB ;


-- expanding   symbol:  PLL_13.sym # of pins=31
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/PLL_13.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/PLL_13.sch
entity PLL_13 is
port (
  Iref : inout std_logic ;
  LP_ext : inout std_logic ;
  VDD_BUFF : inout std_logic ;
  VDD : inout std_logic ;
  VDD_VCO : inout std_logic ;
  VSS : inout std_logic ;
  RST_DIV : in std_logic ;
  Vref : in std_logic ;
  S2 : in std_logic ;
  T0 : in std_logic ;
  S0 : in std_logic ;
  S1 : in std_logic ;
  F2 : in std_logic ;
  F0 : in std_logic ;
  T1 : in std_logic ;
  F1 : in std_logic ;
  OPA1 : in std_logic ;
  OPA0 : in std_logic ;
  OPB1 : in std_logic ;
  P1 : in std_logic ;
  OPB0 : in std_logic ;
  P0 : in std_logic ;
  Vo_test : in std_logic ;
  PD_test : in std_logic ;
  Vcntl_test : in std_logic ;
  PU_test : in std_logic ;
  Vdiv_test : in std_logic ;
  Output1 : out std_logic ;
  Output2 : out std_logic ;
  test_output : out std_logic ;
  LP_op_test : out std_logic
);
end PLL_13 ;

architecture arch_PLL_13 of PLL_13 is

component PFD 
port (
  VSS : inout std_logic ;
  VREF : in std_logic ;
  VDIV : in std_logic ;
  PU : out std_logic ;
  PD : out std_logic ;
  VDD : inout std_logic
);
end component ;

component Feedback_Divider 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv : out std_logic ;
  F2 : in std_logic ;
  F1 : in std_logic ;
  F0 : in std_logic ;
  CLK : in std_logic
);
end component ;

component Output_Divider 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv : out std_logic ;
  OPA1 : in std_logic ;
  OPA0 : in std_logic ;
  CLK : in std_logic
);
end component ;

component CP 
port (
  IPD+ : in std_logic ;
  IPD_ : in std_logic ;
  PU : in std_logic ;
  PD : in std_logic ;
  VCNTL : out std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic
);
end component ;

component A_MUX 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  IN1 : in std_logic ;
  IN2 : in std_logic ;
  SEL : in std_logic ;
  OUT : out std_logic
);
end component ;

component LF 
port (
  VCNTL : inout std_logic ;
  VDD : inout std_logic ;
  VSS : inout std_logic
);
end component ;

component a2x1mux 
port (
  IN1 : in std_logic ;
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  SEL : in std_logic ;
  VSS : inout std_logic ;
  IN2 : in std_logic
);
end component ;

component 4x1_mux_ibr. 
port (
  VDD : inout std_logic ;
  S1 : in std_logic ;
  VSS : inout std_logic ;
  I2 : in std_logic ;
  I3 : in std_logic ;
  S0 : in std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  OUT : out std_logic
);
end component ;

component Prescaler_Divider 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv : out std_logic ;
  OPA1 : in std_logic ;
  OPA0 : in std_logic ;
  CLK : in std_logic
);
end component ;

component 2x1_mux_ibr 
port (
  VSS : inout std_logic ;
  Sel : in std_logic ;
  OUT : out std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  VDD : inout std_logic
);
end component ;

component VCO 
port (
  VDD : in std_logic ;
  EN : in std_logic ;
  OUT : out std_logic ;
  OUTB : out std_logic ;
  VCONT : in std_logic ;
  VSS : in std_logic
);
end component ;

component Tappered-Buffer_1 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component INV_2 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component Current_Mirror_Top_s 
port (
  VDD : inout std_logic ;
  ITAIL : in std_logic ;
  ITAIL_SRC : out std_logic ;
  ITAIL_SINK : out std_logic ;
  VSS : inout std_logic
);
end component ;


signal IPD+ : std_logic ;
signal IPD_ : std_logic ;
signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net13 : std_logic ;
signal net14 : std_logic ;
signal net15 : std_logic ;
signal vcntl_test : std_logic ;
signal PD : std_logic ;
signal PU : std_logic ;
signal VCO_op_bar : std_logic ;
signal Vdiv : std_logic ;
signal VCO_op : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
signal Vco_op : std_logic ;
begin
x3 : PFD
port map (
   VSS => VSS ,
   VREF => net1 ,
   VDIV => net2 ,
   PU => PU ,
   PD => PD ,
   VDD => VDD
);

x2 : Feedback_Divider
port map (
   VSS => VSS ,
   VDD => VDD ,
   RST => RST_DIV ,
   Vdiv => Vdiv ,
   F2 => F2 ,
   F1 => F1 ,
   F0 => F0 ,
   CLK => net8
);

x5 : Output_Divider
port map (
   VSS => VSS ,
   VDD => VDD ,
   RST => RST_DIV ,
   Vdiv => net4 ,
   OPA1 => OPB1 ,
   OPA0 => OPB0 ,
   CLK => VCO_op
);

x6 : CP
port map (
   IPD+ => IPD+ ,
   IPD_ => IPD_ ,
   PU => net5 ,
   PD => net6 ,
   VCNTL => LP_op_test ,
   VSS => VSS ,
   VDD => VDD
);

x4 : Output_Divider
port map (
   VSS => VSS ,
   VDD => VDD ,
   RST => RST_DIV ,
   Vdiv => net3 ,
   OPA1 => OPA1 ,
   OPA0 => OPA0 ,
   CLK => VCO_op
);

x12 : A_MUX
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN1 => vcntl_test ,
   IN2 => LP_op_test ,
   SEL => S1 ,
   OUT => net9
);

x13 : A_MUX
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN1 => Vo_test ,
   IN2 => VCO_op ,
   SEL => S1 ,
   OUT => net8
);

x7 : LF
port map (
   VCNTL => net10 ,
   VDD => VDD ,
   VSS => VSS
);

x15 : a2x1mux
port map (
   IN1 => LP_ext ,
   VDD => VDD ,
   VOUT => LP_op_test ,
   SEL => net15 ,
   VSS => VSS ,
   IN2 => net10
);

x16 : 4x1_mux_ibr.
port map (
   VDD => VDD ,
   S1 => T1 ,
   VSS => VSS ,
   I2 => Vco_op ,
   I3 => Vdiv ,
   S0 => T0 ,
   I0 => PU ,
   I1 => PD ,
   OUT => net11
);

x1 : Prescaler_Divider
port map (
   VSS => VSS ,
   VDD => VDD ,
   RST => RST_DIV ,
   Vdiv => net7 ,
   OPA1 => P1 ,
   OPA0 => P0 ,
   CLK => Vref
);

x11 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S0 ,
   OUT => net1 ,
   I0 => Vref ,
   I1 => net7 ,
   VDD => VDD
);

x14 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S1 ,
   OUT => net2 ,
   I0 => Vdiv_test ,
   I1 => Vdiv ,
   VDD => VDD
);

x9 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S1 ,
   OUT => net5 ,
   I0 => PU_test ,
   I1 => PU ,
   VDD => VDD
);

x10 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S1 ,
   OUT => net6 ,
   I0 => PD_test ,
   I1 => PD ,
   VDD => VDD
);

x8 : VCO
port map (
   VDD => VDD_VCO ,
   EN => VDD ,
   OUT => VCO_op ,
   OUTB => VCO_op_bar ,
   VCONT => net9 ,
   VSS => VSS
);

x17 : Tappered-Buffer_1
port map (
   VSS => VSS ,
   VDD => VDD_BUFF ,
   OUT => Output1 ,
   IN => net12
);

x18 : Tappered-Buffer_1
port map (
   VSS => VSS ,
   VDD => VDD_BUFF ,
   OUT => Output2 ,
   IN => net14
);

x19 : Tappered-Buffer_1
port map (
   VSS => VSS ,
   VDD => VDD_BUFF ,
   OUT => test_output ,
   IN => net13
);

x20 : INV_2
port map (
   VSS => VSS ,
   VDD => VDD_BUFF ,
   OUT => net12 ,
   IN => net3
);

x21 : INV_2
port map (
   VSS => VSS ,
   VDD => VDD_BUFF ,
   OUT => net14 ,
   IN => net4
);

x22 : INV_2
port map (
   VSS => VSS ,
   VDD => VDD_BUFF ,
   OUT => net13 ,
   IN => net11
);

x23 : Current_Mirror_Top_s
port map (
   VDD => VDD ,
   ITAIL => Iref ,
   ITAIL_SRC => IPD+ ,
   ITAIL_SINK => IPD_ ,
   VSS => VSS
);

end arch_PLL_13 ;


-- expanding   symbol:  PFD.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/PFD.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/PFD.sch
entity PFD is
port (
  VSS : inout std_logic ;
  VREF : in std_logic ;
  VDIV : in std_logic ;
  PU : out std_logic ;
  PD : out std_logic ;
  VDD : inout std_logic
);
end PFD ;

architecture arch_PFD of PFD is

component DFF 
port (
  VSS : inout std_logic ;
  D : in std_logic ;
  RST : in std_logic ;
  CLK : in std_logic ;
  Q : out std_logic ;
  QB : out std_logic ;
  VDD : inout std_logic
);
end component ;

component NAND 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component buffer_loading 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component inv_PFD 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component buffer_PFD 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
begin
x1 : DFF
port map (
   VSS => VSS ,
   D => VDD ,
   RST => net6 ,
   CLK => net2 ,
   Q => net7 ,
   QB => net1 ,
   VDD => VDD
);

x2 : DFF
port map (
   VSS => VSS ,
   D => VDD ,
   RST => net6 ,
   CLK => net5 ,
   Q => net4 ,
   QB => net3 ,
   VDD => VDD
);

x3 : NAND
port map (
   IN1 => net4 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net8 ,
   IN2 => net7
);

x4 : buffer_loading
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => PU ,
   IN => net4
);

x8 : buffer_loading
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => PD ,
   IN => net7
);

x6 : inv_PFD
port map (
   VSS => VSS ,
   IN => VDIV ,
   OUT => net2 ,
   VDD => VDD
);

x7 : inv_PFD
port map (
   VSS => VSS ,
   IN => VREF ,
   OUT => net5 ,
   VDD => VDD
);

x5 : buffer_PFD
port map (
   VSS => VSS ,
   IN => net8 ,
   OUT => net6 ,
   VDD => VDD
);

end arch_PFD ;


-- expanding   symbol:  Feedback_Divider.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Feedback_Divider.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Feedback_Divider.sch
entity Feedback_Divider is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv : out std_logic ;
  F2 : in std_logic ;
  F1 : in std_logic ;
  F0 : in std_logic ;
  CLK : in std_logic
);
end Feedback_Divider ;

architecture arch_Feedback_Divider of Feedback_Divider is

component CLK_div_100 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv100 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_108 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv108 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_110 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv110 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_90 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv90 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_96 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv96 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_93 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv93 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_99 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv99 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;

component 8x1_mux_ibr. 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  S1 : in std_logic ;
  S0 : in std_logic ;
  OUT : out std_logic ;
  S2 : in std_logic ;
  I0 : in std_logic ;
  I7 : in std_logic ;
  I3 : in std_logic ;
  I2 : in std_logic ;
  I5 : in std_logic ;
  I1 : in std_logic ;
  I4 : in std_logic ;
  I6 : in std_logic
);
end component ;

component dec_3x8_updated_ibr 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  D0 : out std_logic ;
  D1 : out std_logic ;
  D2 : out std_logic ;
  D3 : out std_logic ;
  D4 : out std_logic ;
  D5 : out std_logic ;
  D6 : out std_logic ;
  D7 : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end component ;

component CLK_div_105 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv105 : out std_logic ;
  CLK : in std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net13 : std_logic ;
signal net14 : std_logic ;
signal net15 : std_logic ;
signal net16 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : CLK_div_100
port map (
   VSS => VSS ,
   VDD => net6 ,
   RST => RST ,
   Vdiv100 => net2 ,
   CLK => CLK
);

x4 : CLK_div_108
port map (
   VSS => VSS ,
   VDD => net8 ,
   RST => RST ,
   Vdiv108 => net15 ,
   CLK => CLK
);

x5 : CLK_div_110
port map (
   VSS => VSS ,
   VDD => net9 ,
   RST => RST ,
   Vdiv110 => net16 ,
   CLK => CLK
);

x6 : CLK_div_90
port map (
   VSS => VSS ,
   VDD => net3 ,
   RST => RST ,
   Vdiv90 => net10 ,
   CLK => CLK
);

x7 : CLK_div_96
port map (
   VSS => VSS ,
   VDD => net11 ,
   RST => RST ,
   Vdiv96 => net13 ,
   CLK => CLK
);

x8 : CLK_div_93
port map (
   VSS => VSS ,
   VDD => net4 ,
   Vdiv93 => net12 ,
   RST => RST ,
   CLK => CLK
);

x9 : CLK_div_99
port map (
   VSS => VSS ,
   VDD => net5 ,
   Vdiv99 => net1 ,
   RST => RST ,
   CLK => CLK
);

x2 : 8x1_mux_ibr.
port map (
   VDD => VDD ,
   VSS => VSS ,
   S1 => F1 ,
   S0 => F0 ,
   OUT => Vdiv ,
   S2 => F2 ,
   I0 => net10 ,
   I7 => net16 ,
   I3 => net1 ,
   I2 => net13 ,
   I5 => net14 ,
   I1 => net12 ,
   I4 => net2 ,
   I6 => net15
);

x10 : dec_3x8_updated_ibr
port map (
   IN1 => F2 ,
   VSS => VSS ,
   VDD => VDD ,
   D0 => net3 ,
   D1 => net4 ,
   D2 => net11 ,
   D3 => net5 ,
   D4 => net6 ,
   D5 => net7 ,
   D6 => net8 ,
   D7 => net9 ,
   IN3 => F0 ,
   IN2 => F1
);

x3 : CLK_div_105
port map (
   VSS => VSS ,
   VDD => net7 ,
   RST => RST ,
   Vdiv105 => net14 ,
   CLK => CLK
);

end arch_Feedback_Divider ;


-- expanding   symbol:  Output_Divider.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Output_Divider.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Output_Divider.sch
entity Output_Divider is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv : out std_logic ;
  OPA1 : in std_logic ;
  OPA0 : in std_logic ;
  CLK : in std_logic
);
end Output_Divider ;

architecture arch_Output_Divider of Output_Divider is

component 4x1_mux_ibr. 
port (
  VDD : inout std_logic ;
  S1 : in std_logic ;
  VSS : inout std_logic ;
  I2 : in std_logic ;
  I3 : in std_logic ;
  S0 : in std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  OUT : out std_logic
);
end component ;

component CLK_div_2 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv2 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_3 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_4 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv4 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;

component decoder_2x4_ibr 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  D0 : out std_logic ;
  D1 : out std_logic ;
  D2 : out std_logic ;
  D3 : out std_logic ;
  IN2 : in std_logic
);
end component ;

component buffer_opd 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net10 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : CLK_div_2
port map (
   VSS => VSS ,
   VDD => net1 ,
   Vdiv2 => net6 ,
   RST => RST ,
   CLK => CLK
);

x2 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => net2 ,
   Q0 => net9 ,
   Q1 => net10 ,
   RST => RST ,
   Vdiv3 => net7 ,
   CLK => CLK
);

x3 : CLK_div_4
port map (
   VSS => VSS ,
   VDD => net3 ,
   Vdiv4 => net8 ,
   RST => RST ,
   CLK => CLK
);

x4 : 4x1_mux_ibr.
port map (
   VDD => VDD ,
   S1 => OPA1 ,
   VSS => VSS ,
   I2 => net7 ,
   I3 => net8 ,
   S0 => OPA0 ,
   I0 => net5 ,
   I1 => net6 ,
   OUT => Vdiv
);

x5 : decoder_2x4_ibr
port map (
   IN1 => OPA0 ,
   VSS => VSS ,
   VDD => VDD ,
   D0 => net4 ,
   D1 => net1 ,
   D2 => net2 ,
   D3 => net3 ,
   IN2 => OPA1
);

x6 : buffer_opd
port map (
   VSS => VSS ,
   IN => CLK ,
   OUT => net5 ,
   VDD => net4
);

end arch_Output_Divider ;


-- expanding   symbol:  CP.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CP.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CP.sch
entity CP is
port (
  IPD+ : in std_logic ;
  IPD_ : in std_logic ;
  PU : in std_logic ;
  PD : in std_logic ;
  VCNTL : out std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic
);
end CP ;

architecture arch_CP of CP is

component inv_my 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
begin
M4 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 5.6e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => VCNTL ,
   G => PD ,
   S => net1 ,
   B => VSS
);

x1 : inv_my
port map (
   VSS => VSS ,
   IN => PU ,
   OUT => net3 ,
   VDD => VDD
);

M5 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 5.6e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IPD+ ,
   S => VSS ,
   B => VSS
);

M6 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 5.6e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => IPD+ ,
   G => IPD+ ,
   S => VSS ,
   B => VSS
);

M1 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 1.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => VCNTL ,
   G => net3 ,
   S => net2 ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 1.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => IPD_ ,
   S => VDD ,
   B => VDD
);

M3 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 1.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => IPD_ ,
   G => IPD_ ,
   S => VDD ,
   B => VDD
);

end arch_CP ;


-- expanding   symbol:  A_MUX.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/A_MUX.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/A_MUX.sch
entity A_MUX is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  IN1 : in std_logic ;
  IN2 : in std_logic ;
  SEL : in std_logic ;
  OUT : out std_logic
);
end A_MUX ;

architecture arch_A_MUX of A_MUX is

component INV_2 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component TR_Gate 
port (
  OUT : out std_logic ;
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  IN : in std_logic ;
  CLK : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x1 : TR_Gate
port map (
   OUT => OUT ,
   VDD => VDD ,
   VSS => VSS ,
   IN => IN2 ,
   CLK => SEL
);

x2 : TR_Gate
port map (
   OUT => OUT ,
   VDD => VDD ,
   VSS => VSS ,
   IN => IN1 ,
   CLK => net1
);

x3 : INV_2
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN => SEL
);

end arch_A_MUX ;


-- expanding   symbol:  LF.sym # of pins=3
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/LF.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/LF.sch
entity LF is
port (
  VCNTL : inout std_logic ;
  VDD : inout std_logic ;
  VSS : inout std_logic
);
end LF ;

architecture arch_LF of LF is

component res_sch 
port (
  A : inout std_logic ;
  B : inout std_logic ;
  VDD : inout std_logic
);
end component ;

component cap80p 
port (
  N : inout std_logic ;
  P : inout std_logic
);
end component ;

component cap3p 
port (
  Nn : inout std_logic ;
  Pp : inout std_logic
);
end component ;


signal net1 : std_logic ;
begin
x1 : res_sch
port map (
   A => VCNTL ,
   B => net1 ,
   VDD => VDD
);

x2 : cap80p
port map (
   N => VSS ,
   P => net1
);

x3 : cap3p
port map (
   Nn => VSS ,
   Pp => VCNTL
);

end arch_LF ;


-- expanding   symbol:  a2x1mux.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/a2x1mux.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/a2x1mux.sch
entity a2x1mux is
port (
  IN1 : in std_logic ;
  VDD : inout std_logic ;
  VOUT : out std_logic ;
  SEL : in std_logic ;
  VSS : inout std_logic ;
  IN2 : in std_logic
);
end a2x1mux ;

architecture arch_a2x1mux of a2x1mux is

component inv_my 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component Transmission_Gate 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  CLK : in std_logic
);
end component ;


signal SEL_B : std_logic ;
begin
x2 : Transmission_Gate
port map (
   VDD => VDD ,
   VSS => VSS ,
   VOUT => VOUT ,
   VIN => IN1 ,
   CLK => SEL_B
);

x3 : Transmission_Gate
port map (
   VDD => VDD ,
   VSS => VSS ,
   VOUT => VOUT ,
   VIN => IN2 ,
   CLK => SEL
);

x1 : inv_my
port map (
   VSS => VSS ,
   IN => SEL ,
   OUT => SEL_B ,
   VDD => VDD
);

end arch_a2x1mux ;


-- expanding   symbol:  4x1_mux_ibr..sym # of pins=9
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/4x1_mux_ibr..sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/4x1_mux_ibr..sch
entity 4x1_mux_ibr. is
port (
  VDD : inout std_logic ;
  S1 : in std_logic ;
  VSS : inout std_logic ;
  I2 : in std_logic ;
  I3 : in std_logic ;
  S0 : in std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  OUT : out std_logic
);
end 4x1_mux_ibr. ;

architecture arch_4x1_mux_ibr. of 4x1_mux_ibr. is

component 2x1_mux_ibr 
port (
  VSS : inout std_logic ;
  Sel : in std_logic ;
  OUT : out std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
x1 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S0 ,
   OUT => net1 ,
   I0 => I0 ,
   I1 => I1 ,
   VDD => VDD
);

x2 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S0 ,
   OUT => net2 ,
   I0 => I2 ,
   I1 => I3 ,
   VDD => VDD
);

x3 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S1 ,
   OUT => OUT ,
   I0 => net1 ,
   I1 => net2 ,
   VDD => VDD
);

end arch_4x1_mux_ibr. ;


-- expanding   symbol:  Prescaler_Divider.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Prescaler_Divider.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Prescaler_Divider.sch
entity Prescaler_Divider is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv : out std_logic ;
  OPA1 : in std_logic ;
  OPA0 : in std_logic ;
  CLK : in std_logic
);
end Prescaler_Divider ;

architecture arch_Prescaler_Divider of Prescaler_Divider is

component 4x1_mux_ibr. 
port (
  VDD : inout std_logic ;
  S1 : in std_logic ;
  VSS : inout std_logic ;
  I2 : in std_logic ;
  I3 : in std_logic ;
  S0 : in std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  OUT : out std_logic
);
end component ;

component CLK_div_2 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv2 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_3 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_4 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv4 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;

component decoder_2x4_ibr 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  D0 : out std_logic ;
  D1 : out std_logic ;
  D2 : out std_logic ;
  D3 : out std_logic ;
  IN2 : in std_logic
);
end component ;

component buffer_opd 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net10 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : CLK_div_2
port map (
   VSS => VSS ,
   VDD => net1 ,
   Vdiv2 => net6 ,
   RST => RST ,
   CLK => CLK
);

x2 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => net2 ,
   Q0 => net9 ,
   Q1 => net10 ,
   RST => RST ,
   Vdiv3 => net7 ,
   CLK => CLK
);

x3 : CLK_div_4
port map (
   VSS => VSS ,
   VDD => net3 ,
   Vdiv4 => net8 ,
   RST => RST ,
   CLK => CLK
);

x4 : 4x1_mux_ibr.
port map (
   VDD => VDD ,
   S1 => OPA1 ,
   VSS => VSS ,
   I2 => net7 ,
   I3 => net8 ,
   S0 => OPA0 ,
   I0 => net5 ,
   I1 => net6 ,
   OUT => Vdiv
);

x5 : decoder_2x4_ibr
port map (
   IN1 => OPA0 ,
   VSS => VSS ,
   VDD => VDD ,
   D0 => net4 ,
   D1 => net1 ,
   D2 => net2 ,
   D3 => net3 ,
   IN2 => OPA1
);

x6 : buffer_opd
port map (
   VSS => VSS ,
   IN => CLK ,
   OUT => net5 ,
   VDD => net4
);

end arch_Prescaler_Divider ;


-- expanding   symbol:  2x1_mux_ibr.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/2x1_mux_ibr.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/2x1_mux_ibr.sch
entity 2x1_mux_ibr is
port (
  VSS : inout std_logic ;
  Sel : in std_logic ;
  OUT : out std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  VDD : inout std_logic
);
end 2x1_mux_ibr ;

architecture arch_2x1_mux_ibr of 2x1_mux_ibr is

component inv_my_ibr 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component NAND_ibr_mx2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
begin
x4 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => Sel ,
   OUT => net1 ,
   VDD => VDD
);

x1 : NAND_ibr_mx2
port map (
   IN1 => I0 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => net1
);

x2 : NAND_ibr_mx2
port map (
   IN1 => Sel ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => I1
);

x3 : NAND_ibr_mx2
port map (
   IN1 => net2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN2 => net3
);

end arch_2x1_mux_ibr ;


-- expanding   symbol:  VCO.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/VCO.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/VCO.sch
entity VCO is
port (
  VDD : in std_logic ;
  EN : in std_logic ;
  OUT : out std_logic ;
  OUTB : out std_logic ;
  VCONT : in std_logic ;
  VSS : in std_logic
);
end VCO ;

architecture arch_VCO of VCO is

component GF_INV_1 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component GF_INV_4 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component GF_INV_16 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component GF_INV_STAGE 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component Delay_Cell 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  VCONT : inout std_logic ;
  IN : inout std_logic ;
  INB : inout std_logic ;
  OUT : inout std_logic ;
  OUTB : inout std_logic ;
  EN : inout std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net13 : std_logic ;
signal net14 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x5 : GF_INV_1
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN => net1
);

x6 : GF_INV_1
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net4 ,
   IN => net2
);

x7 : GF_INV_4
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net5 ,
   IN => net3
);

x8 : GF_INV_4
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net6 ,
   IN => net4
);

x9 : GF_INV_16
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net5
);

x10 : GF_INV_16
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUTB ,
   IN => net6
);

x3 : GF_INV_STAGE
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net8 ,
   IN => net12
);

x4 : GF_INV_STAGE
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net7 ,
   IN => net9
);

x1 : Delay_Cell
port map (
   VDD => VDD ,
   VSS => VSS ,
   VCONT => VCONT ,
   IN => net14 ,
   INB => net13 ,
   OUT => net12 ,
   OUTB => net9 ,
   EN => EN
);

x2 : Delay_Cell
port map (
   VDD => VDD ,
   VSS => VSS ,
   VCONT => VCONT ,
   IN => net7 ,
   INB => net8 ,
   OUT => net10 ,
   OUTB => net11 ,
   EN => EN
);

x11 : Delay_Cell
port map (
   VDD => VDD ,
   VSS => VSS ,
   VCONT => VCONT ,
   IN => net2 ,
   INB => net1 ,
   OUT => net13 ,
   OUTB => net14 ,
   EN => EN
);

x12 : Delay_Cell
port map (
   VDD => VDD ,
   VSS => VSS ,
   VCONT => VCONT ,
   IN => net11 ,
   INB => net10 ,
   OUT => net1 ,
   OUTB => net2 ,
   EN => EN
);

end arch_VCO ;


-- expanding   symbol:  Tappered-Buffer_1.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Tappered-Buffer_1.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Tappered-Buffer_1.sch
entity Tappered-Buffer_1 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end Tappered-Buffer_1 ;

architecture arch_Tappered-Buffer_1 of Tappered-Buffer_1 is


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 5.6e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M4 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 1.12e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN ,
   S => VDD ,
   B => VDD
);

M1 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.24e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net1 ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.48e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net1 ,
   S => VDD ,
   B => VDD
);

M5 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 8.96e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => net2 ,
   S => VSS ,
   B => VSS
);

M6 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 8.96e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => net2 ,
   S => VDD ,
   B => VDD
);

M7 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 8.96e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => net2 ,
   S => VDD ,
   B => VDD
);

M8 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 3.92e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => VSS ,
   G => VSS ,
   S => VSS ,
   B => VSS
);

end arch_Tappered-Buffer_1 ;


-- expanding   symbol:  INV_2.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/INV_2.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/INV_2.sch
entity INV_2 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end INV_2 ;

architecture arch_INV_2 of INV_2 is

begin
M1 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_INV_2 ;


-- expanding   symbol:  Current_Mirror_Top_s.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Current_Mirror_Top_s.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Current_Mirror_Top_s.sch
entity Current_Mirror_Top_s is
port (
  VDD : inout std_logic ;
  ITAIL : in std_logic ;
  ITAIL_SRC : out std_logic ;
  ITAIL_SINK : out std_logic ;
  VSS : inout std_logic
);
end Current_Mirror_Top_s ;

architecture arch_Current_Mirror_Top_s of Current_Mirror_Top_s is


signal G_sink_dn : std_logic ;
signal G_sink_up : std_logic ;
signal G_source_dn : std_logic ;
signal G_source_up : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
begin
M1 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => ITAIL ,
   S => net1 ,
   B => VSS
);

M2 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => net5 ,
   S => VSS ,
   B => VSS
);

M7 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net2 ,
   S => net3 ,
   B => VDD
);

M8 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => net3 ,
   S => VDD ,
   B => VDD
);

M9 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => G_sink_up ,
   G => net2 ,
   S => net4 ,
   B => VDD
);

M10 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net4 ,
   G => net3 ,
   S => VDD ,
   B => VDD
);

M11 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => G_sink_up ,
   G => G_sink_up ,
   S => G_sink_dn ,
   B => VSS
);

M12 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => G_sink_dn ,
   G => G_sink_dn ,
   S => VSS ,
   B => VSS
);

M3 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => ITAIL ,
   G => ITAIL ,
   S => net5 ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 2.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net5 ,
   G => net5 ,
   S => VSS ,
   B => VSS
);

M5 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => G_source_dn ,
   G => G_sink_up ,
   S => net6 ,
   B => VSS
);

M6 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net6 ,
   G => G_sink_dn ,
   S => VSS ,
   B => VSS
);

M13 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => G_source_dn ,
   G => G_source_dn ,
   S => G_source_up ,
   B => VDD
);

M14 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => G_source_up ,
   G => G_source_up ,
   S => VDD ,
   B => VDD
);

M15 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => ITAIL_SINK ,
   G => G_sink_up ,
   S => net7 ,
   B => VSS
);

M16 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net7 ,
   G => G_sink_dn ,
   S => VSS ,
   B => VSS
);

M17 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => ITAIL_SRC ,
   G => G_source_dn ,
   S => net8 ,
   B => VDD
);

M18 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 4.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net8 ,
   G => G_source_up ,
   S => VDD ,
   B => VDD
);

end arch_Current_Mirror_Top_s ;


-- expanding   symbol:  DFF.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/DFF.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/DFF.sch
entity DFF is
port (
  VSS : inout std_logic ;
  D : in std_logic ;
  RST : in std_logic ;
  CLK : in std_logic ;
  Q : out std_logic ;
  QB : out std_logic ;
  VDD : inout std_logic
);
end DFF ;

architecture arch_DFF of DFF is

component NAND_pfd 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component inv_DFF 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
begin
x1 : NAND_pfd
port map (
   IN1 => RST ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net6 ,
   IN2 => CLK
);

x2 : NAND_pfd
port map (
   IN1 => net1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => D
);

x3 : NAND_pfd
port map (
   IN1 => net2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net4 ,
   IN2 => net3
);

x4 : NAND_pfd
port map (
   IN1 => RST ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net5 ,
   IN2 => net4
);

x5 : NAND_pfd
port map (
   IN1 => net6 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => net7
);

x6 : NAND_pfd
port map (
   IN1 => net5 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN2 => net6
);

x7 : NAND_pfd
port map (
   IN1 => net1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => QB ,
   IN2 => Q
);

x8 : NAND_pfd
port map (
   IN1 => QB ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Q ,
   IN2 => net3
);

x9 : inv_DFF
port map (
   VSS => VSS ,
   IN => net5 ,
   OUT => net7 ,
   VDD => VDD
);

end arch_DFF ;


-- expanding   symbol:  NAND.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND.sch
entity NAND is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end NAND ;

architecture arch_NAND of NAND is


signal net1 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN2 ,
   S => VSS ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => net1 ,
   B => VSS
);

M5 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

end arch_NAND ;


-- expanding   symbol:  buffer_loading.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/buffer_loading.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/buffer_loading.sch
entity buffer_loading is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end buffer_loading ;

architecture arch_buffer_loading of buffer_loading is


signal net1 : std_logic ;
begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN ,
   S => VDD ,
   B => VDD
);

M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => net1 ,
   S => VSS ,
   B => VSS
);

M4 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => net1 ,
   S => VDD ,
   B => VDD
);

end arch_buffer_loading ;


-- expanding   symbol:  inv_PFD.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_PFD.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_PFD.sch
entity inv_PFD is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end inv_PFD ;

architecture arch_inv_PFD of inv_PFD is

begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 4.4e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 1.6e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_inv_PFD ;


-- expanding   symbol:  buffer_PFD.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/buffer_PFD.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/buffer_PFD.sch
entity buffer_PFD is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end buffer_PFD ;

architecture arch_buffer_PFD of buffer_PFD is

component GF_INV_PFD 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x1 : GF_INV_PFD
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN => IN
);

x2 : GF_INV_PFD
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

end arch_buffer_PFD ;


-- expanding   symbol:  CLK_div_100.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_100.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_100.sch
entity CLK_div_100 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv100 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_100 ;

architecture arch_CLK_div_100 of CLK_div_100 is

component CLK_div_10 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv10 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : CLK_div_10
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net2 ,
   Q1 => net3 ,
   RST => RST ,
   Vdiv10 => net1 ,
   Q2 => net4 ,
   Q3 => net5 ,
   CLK => CLK
);

x2 : CLK_div_10
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net6 ,
   Q1 => net7 ,
   RST => RST ,
   Vdiv10 => Vdiv100 ,
   Q2 => net8 ,
   Q3 => net9 ,
   CLK => net1
);

end arch_CLK_div_100 ;


-- expanding   symbol:  CLK_div_108.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_108.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_108.sch
entity CLK_div_108 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv108 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_108 ;

architecture arch_CLK_div_108 of CLK_div_108 is

component CLK_div_3 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component JK_flipflop 
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x2 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net5 ,
   Q1 => net6 ,
   RST => RST ,
   Vdiv3 => net1 ,
   CLK => CLK
);

x1 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net7 ,
   Q1 => net8 ,
   RST => RST ,
   Vdiv3 => net2 ,
   CLK => net1
);

x3 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net9 ,
   Q1 => net10 ,
   RST => RST ,
   Vdiv3 => net3 ,
   CLK => net2
);

x4 : JK_flipflop
port map (
   CLK => net3 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => net4 ,
   J => VDD ,
   Qb => net11 ,
   RST => RST ,
   K => VDD
);

x5 : JK_flipflop
port map (
   CLK => net4 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Vdiv108 ,
   J => VDD ,
   Qb => net12 ,
   RST => RST ,
   K => VDD
);

end arch_CLK_div_108 ;


-- expanding   symbol:  CLK_div_110.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_110.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_110.sch
entity CLK_div_110 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv110 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_110 ;

architecture arch_CLK_div_110 of CLK_div_110 is

component CLK_div_10 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv10 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_11_new 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv11 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x2 : CLK_div_10
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net2 ,
   Q1 => net3 ,
   RST => RST ,
   Vdiv10 => Vdiv110 ,
   Q2 => net4 ,
   Q3 => net5 ,
   CLK => net1
);

x1 : CLK_div_11_new
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net6 ,
   Q1 => net7 ,
   RST => RST ,
   Vdiv11 => net1 ,
   Q2 => net8 ,
   Q3 => net9 ,
   CLK => CLK
);

end arch_CLK_div_110 ;


-- expanding   symbol:  CLK_div_90.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_90.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_90.sch
entity CLK_div_90 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv90 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_90 ;

architecture arch_CLK_div_90 of CLK_div_90 is

component CLK_div_3 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_10 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv10 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end component ;


signal net10 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net3 ,
   Q1 => net4 ,
   RST => RST ,
   Vdiv3 => net2 ,
   CLK => CLK
);

x2 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net5 ,
   Q1 => net6 ,
   RST => RST ,
   Vdiv3 => net1 ,
   CLK => net2
);

x3 : CLK_div_10
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net7 ,
   Q1 => net8 ,
   RST => RST ,
   Vdiv10 => Vdiv90 ,
   Q2 => net9 ,
   Q3 => net10 ,
   CLK => net1
);

end arch_CLK_div_90 ;


-- expanding   symbol:  CLK_div_96.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_96.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_96.sch
entity CLK_div_96 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv96 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_96 ;

architecture arch_CLK_div_96 of CLK_div_96 is

component CLK_div_3 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component JK_flipflop 
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : JK_flipflop
port map (
   CLK => net3 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => net4 ,
   J => VDD ,
   Qb => net6 ,
   RST => RST ,
   K => VDD
);

x2 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net7 ,
   Q1 => net8 ,
   RST => RST ,
   Vdiv3 => Vdiv96 ,
   CLK => net4
);

x3 : JK_flipflop
port map (
   CLK => net2 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => net3 ,
   J => VDD ,
   Qb => net9 ,
   RST => RST ,
   K => VDD
);

x4 : JK_flipflop
port map (
   CLK => net1 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => net2 ,
   J => VDD ,
   Qb => net10 ,
   RST => RST ,
   K => VDD
);

x5 : JK_flipflop
port map (
   CLK => net5 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => net1 ,
   J => VDD ,
   Qb => net11 ,
   RST => RST ,
   K => VDD
);

x6 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => net5 ,
   J => VDD ,
   Qb => net12 ,
   RST => RST ,
   K => VDD
);

end arch_CLK_div_96 ;


-- expanding   symbol:  CLK_div_93.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_93.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_93.sch
entity CLK_div_93 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv93 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end CLK_div_93 ;

architecture arch_CLK_div_93 of CLK_div_93 is

component CLK_div_3 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_31 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  Q4 : out std_logic ;
  Vdiv31 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
begin
x1 : CLK_div_31
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net2 ,
   Q1 => net3 ,
   Q2 => net4 ,
   Q3 => net5 ,
   Q4 => net6 ,
   Vdiv31 => net1 ,
   RST => RST ,
   CLK => CLK
);

x2 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net7 ,
   Q1 => net8 ,
   RST => RST ,
   Vdiv3 => Vdiv93 ,
   CLK => net1
);

end arch_CLK_div_93 ;


-- expanding   symbol:  CLK_div_99.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_99.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_99.sch
entity CLK_div_99 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv99 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end CLK_div_99 ;

architecture arch_CLK_div_99 of CLK_div_99 is

component CLK_div_3 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end component ;

component CLK_div_11_new 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv11 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end component ;


signal net10 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x2 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net3 ,
   Q1 => net4 ,
   RST => RST ,
   Vdiv3 => net2 ,
   CLK => net1
);

x3 : CLK_div_3
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net5 ,
   Q1 => net6 ,
   RST => RST ,
   Vdiv3 => net1 ,
   CLK => CLK
);

x1 : CLK_div_11_new
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net7 ,
   Q1 => net8 ,
   RST => RST ,
   Vdiv11 => Vdiv99 ,
   Q2 => net9 ,
   Q3 => net10 ,
   CLK => net2
);

end arch_CLK_div_99 ;


-- expanding   symbol:  8x1_mux_ibr..sym # of pins=14
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/8x1_mux_ibr..sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/8x1_mux_ibr..sch
entity 8x1_mux_ibr. is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  S1 : in std_logic ;
  S0 : in std_logic ;
  OUT : out std_logic ;
  S2 : in std_logic ;
  I0 : in std_logic ;
  I7 : in std_logic ;
  I3 : in std_logic ;
  I2 : in std_logic ;
  I5 : in std_logic ;
  I1 : in std_logic ;
  I4 : in std_logic ;
  I6 : in std_logic
);
end 8x1_mux_ibr. ;

architecture arch_8x1_mux_ibr. of 8x1_mux_ibr. is

component 4x1_mux_ibr. 
port (
  VDD : inout std_logic ;
  S1 : in std_logic ;
  VSS : inout std_logic ;
  I2 : in std_logic ;
  I3 : in std_logic ;
  S0 : in std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  OUT : out std_logic
);
end component ;

component 2x1_mux_ibr 
port (
  VSS : inout std_logic ;
  Sel : in std_logic ;
  OUT : out std_logic ;
  I0 : in std_logic ;
  I1 : in std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
x2 : 4x1_mux_ibr.
port map (
   VDD => VDD ,
   S1 => S1 ,
   VSS => VSS ,
   I2 => I2 ,
   I3 => I3 ,
   S0 => S0 ,
   I0 => I0 ,
   I1 => I1 ,
   OUT => net2
);

x3 : 4x1_mux_ibr.
port map (
   VDD => VDD ,
   S1 => S1 ,
   VSS => VSS ,
   I2 => I6 ,
   I3 => I7 ,
   S0 => S0 ,
   I0 => I4 ,
   I1 => I5 ,
   OUT => net1
);

x1 : 2x1_mux_ibr
port map (
   VSS => VSS ,
   Sel => S2 ,
   OUT => OUT ,
   I0 => net2 ,
   I1 => net1 ,
   VDD => VDD
);

end arch_8x1_mux_ibr. ;


-- expanding   symbol:  dec_3x8_updated_ibr.sym # of pins=13
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/dec_3x8_updated_ibr.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/dec_3x8_updated_ibr.sch
entity dec_3x8_updated_ibr is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  D0 : out std_logic ;
  D1 : out std_logic ;
  D2 : out std_logic ;
  D3 : out std_logic ;
  D4 : out std_logic ;
  D5 : out std_logic ;
  D6 : out std_logic ;
  D7 : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end dec_3x8_updated_ibr ;

architecture arch_dec_3x8_updated_ibr of dec_3x8_updated_ibr is

component inv_my_ibr 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component and_3_ibr 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end component ;


signal IN1B : std_logic ;
signal IN2B : std_logic ;
signal IN3B : std_logic ;
begin
x1 : and_3_ibr
port map (
   IN1 => IN3B ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D0 ,
   IN3 => IN1B ,
   IN2 => IN2B
);

x2 : and_3_ibr
port map (
   IN1 => IN3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D1 ,
   IN3 => IN2B ,
   IN2 => IN1B
);

x3 : and_3_ibr
port map (
   IN1 => IN3B ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D2 ,
   IN3 => IN1B ,
   IN2 => IN2
);

x4 : and_3_ibr
port map (
   IN1 => IN3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D3 ,
   IN3 => IN1B ,
   IN2 => IN2
);

x5 : and_3_ibr
port map (
   IN1 => IN3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D7 ,
   IN3 => IN1 ,
   IN2 => IN2
);

x6 : and_3_ibr
port map (
   IN1 => IN3B ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D6 ,
   IN3 => IN1 ,
   IN2 => IN2
);

x7 : and_3_ibr
port map (
   IN1 => IN3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D5 ,
   IN3 => IN2B ,
   IN2 => IN1
);

x8 : and_3_ibr
port map (
   IN1 => IN3B ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D4 ,
   IN3 => IN2B ,
   IN2 => IN1
);

x9 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => IN1 ,
   OUT => IN1B ,
   VDD => VDD
);

x10 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => IN2 ,
   OUT => IN2B ,
   VDD => VDD
);

x11 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => IN3 ,
   OUT => IN3B ,
   VDD => VDD
);

end arch_dec_3x8_updated_ibr ;


-- expanding   symbol:  CLK_div_105.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_105.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_105.sch
entity CLK_div_105 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv105 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_105 ;

architecture arch_CLK_div_105 of CLK_div_105 is

component CLK_div_10 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv10 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : CLK_div_10
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net2 ,
   Q1 => net3 ,
   RST => RST ,
   Vdiv10 => net1 ,
   Q2 => net4 ,
   Q3 => net5 ,
   CLK => CLK
);

x2 : CLK_div_10
port map (
   VSS => VSS ,
   VDD => VDD ,
   Q0 => net6 ,
   Q1 => net7 ,
   RST => RST ,
   Vdiv10 => Vdiv105 ,
   Q2 => net8 ,
   Q3 => net9 ,
   CLK => net1
);

end arch_CLK_div_105 ;


-- expanding   symbol:  CLK_div_2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_2.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_2.sch
entity CLK_div_2 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv2 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end CLK_div_2 ;

architecture arch_CLK_div_2 of CLK_div_2 is

component JK_flipflop 
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x1 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Vdiv2 ,
   J => VDD ,
   Qb => net1 ,
   RST => RST ,
   K => VDD
);

end arch_CLK_div_2 ;


-- expanding   symbol:  CLK_div_3.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_3.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_3.sch
entity CLK_div_3 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv3 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_3 ;

architecture arch_CLK_div_3 of CLK_div_3 is

component JK_flipflop 
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end component ;

component or_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component and_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
begin
x1 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q1 ,
   J => net1 ,
   Qb => net3 ,
   RST => RST ,
   K => VDD
);

x2 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q0 ,
   J => Q1 ,
   Qb => net1 ,
   RST => RST ,
   K => VDD
);

x4 : or_2
port map (
   IN1 => Q0 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Vdiv3 ,
   IN2 => net2
);

x3 : and_2
port map (
   IN1 => Q1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => CLK
);

end arch_CLK_div_3 ;


-- expanding   symbol:  CLK_div_4.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_4.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_4.sch
entity CLK_div_4 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv4 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end CLK_div_4 ;

architecture arch_CLK_div_4 of CLK_div_4 is

component CLK_div_2 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv2 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x3 : CLK_div_2
port map (
   VSS => VSS ,
   VDD => VDD ,
   Vdiv2 => net1 ,
   RST => RST ,
   CLK => CLK
);

x4 : CLK_div_2
port map (
   VSS => VSS ,
   VDD => VDD ,
   Vdiv2 => Vdiv4 ,
   RST => RST ,
   CLK => net1
);

end arch_CLK_div_4 ;


-- expanding   symbol:  decoder_2x4_ibr.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/decoder_2x4_ibr.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/decoder_2x4_ibr.sch
entity decoder_2x4_ibr is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  D0 : out std_logic ;
  D1 : out std_logic ;
  D2 : out std_logic ;
  D3 : out std_logic ;
  IN2 : in std_logic
);
end decoder_2x4_ibr ;

architecture arch_decoder_2x4_ibr of decoder_2x4_ibr is

component inv_my_ibr 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component and_2_ibr. 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;


signal IN1B : std_logic ;
signal IN2B : std_logic ;
begin
x1 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => IN1 ,
   OUT => IN1B ,
   VDD => VDD
);

x2 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => IN2 ,
   OUT => IN2B ,
   VDD => VDD
);

x3 : and_2_ibr.
port map (
   IN1 => IN2B ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D0 ,
   IN2 => IN1B
);

x4 : and_2_ibr.
port map (
   IN1 => IN2B ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D1 ,
   IN2 => IN1
);

x5 : and_2_ibr.
port map (
   IN1 => IN2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D2 ,
   IN2 => IN1B
);

x6 : and_2_ibr.
port map (
   IN1 => IN2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => D3 ,
   IN2 => IN1
);

end arch_decoder_2x4_ibr ;


-- expanding   symbol:  buffer_opd.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/buffer_opd.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/buffer_opd.sch
entity buffer_opd is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end buffer_opd ;

architecture arch_buffer_opd of buffer_opd is

component GF_INV_opd 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x1 : GF_INV_opd
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN => IN
);

x2 : GF_INV_opd
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

end arch_buffer_opd ;


-- expanding   symbol:  inv_my.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_my.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_my.sch
entity inv_my is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end inv_my ;

architecture arch_inv_my of inv_my is

begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_inv_my ;


-- expanding   symbol:  TR_Gate.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/TR_Gate.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/TR_Gate.sch
entity TR_Gate is
port (
  OUT : out std_logic ;
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  IN : in std_logic ;
  CLK : in std_logic
);
end TR_Gate ;

architecture arch_TR_Gate of TR_Gate is


signal net1 : std_logic ;
begin
M1 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 3.36e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => IN ,
   G => net1 ,
   S => OUT ,
   B => VDD
);

M2 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 3.36e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => IN ,
   G => CLK ,
   S => OUT ,
   B => VSS
);

M3 : pfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 3.36e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => CLK ,
   S => VDD ,
   B => VDD
);

M4 : nfet_03v3
generic map (
   L => 5.0e-07 ,
   W => 1.68e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => CLK ,
   S => VSS ,
   B => VSS
);

end arch_TR_Gate ;


-- expanding   symbol:  res_sch.sym # of pins=3
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/res_sch.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/res_sch.sch
entity res_sch is
port (
  A : inout std_logic ;
  B : inout std_logic ;
  VDD : inout std_logic
);
end res_sch ;

architecture arch_res_sch of res_sch is

begin
R1 : ppolyf_u
generic map (
   W => 0.8E-6 ,
   L => 100.0e-6 ,
   model => ppolyf_u ,
   spiceprefix => X ,
   m => 1
)
port map (
   M => B ,
   P => A ,
   B => VDD
);

end arch_res_sch ;


-- expanding   symbol:  cap80p.sym # of pins=2
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/cap80p.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/cap80p.sch
entity cap80p is
port (
  N : inout std_logic ;
  P : inout std_logic
);
end cap80p ;

architecture arch_cap80p of cap80p is

begin
C1 : cap_mim_2p0fF
generic map (
   W => 25.0e-6 ,
   L => 25.0e-6 ,
   model => cap_mim_2f0_m4m5_noshield ,
   spiceprefix => X ,
   m => 64
)
port map (
   G => P ,
   B => N
);

end arch_cap80p ;


-- expanding   symbol:  cap3p.sym # of pins=2
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/cap3p.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/cap3p.sch
entity cap3p is
port (
  Nn : inout std_logic ;
  Pp : inout std_logic
);
end cap3p ;

architecture arch_cap3p of cap3p is

begin
C1 : cap_mim_2p0fF
generic map (
   W => 42.5E-6 ,
   L => 42.5E-6 ,
   model => cap_mim_2f0_m4m5_noshield ,
   spiceprefix => X ,
   m => 1
)
port map (
   G => Pp ,
   B => Nn
);

end arch_cap3p ;


-- expanding   symbol:  Transmission_Gate.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Transmission_Gate.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Transmission_Gate.sch
entity Transmission_Gate is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  VOUT : out std_logic ;
  VIN : in std_logic ;
  CLK : in std_logic
);
end Transmission_Gate ;

architecture arch_Transmission_Gate of Transmission_Gate is

component inv_my 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
begin
M1 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 1.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => VOUT ,
   G => net1 ,
   S => VIN ,
   B => VDD
);

M2 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 1.0e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => VOUT ,
   G => CLK ,
   S => VIN ,
   B => VSS
);

x1 : inv_my
port map (
   VSS => VSS ,
   IN => CLK ,
   OUT => net1 ,
   VDD => VDD
);

end arch_Transmission_Gate ;


-- expanding   symbol:  inv_my_ibr.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_my_ibr.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_my_ibr.sch
entity inv_my_ibr is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end inv_my_ibr ;

architecture arch_inv_my_ibr of inv_my_ibr is

begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_inv_my_ibr ;


-- expanding   symbol:  NAND_ibr_mx2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND_ibr_mx2.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND_ibr_mx2.sch
entity NAND_ibr_mx2 is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end NAND_ibr_mx2 ;

architecture arch_NAND_ibr_mx2 of NAND_ibr_mx2 is


signal net1 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 4.4e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN2 ,
   S => VSS ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 4.4e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => net1 ,
   B => VSS
);

M5 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

end arch_NAND_ibr_mx2 ;


-- expanding   symbol:  GF_INV_1.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_1.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_1.sch
entity GF_INV_1 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end GF_INV_1 ;

architecture arch_GF_INV_1 of GF_INV_1 is

begin
M1 : nfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 7.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 3.5e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_GF_INV_1 ;


-- expanding   symbol:  GF_INV_4.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_4.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_4.sch
entity GF_INV_4 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end GF_INV_4 ;

architecture arch_GF_INV_4 of GF_INV_4 is

begin
M1 : nfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 1.4e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 2.8e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_GF_INV_4 ;


-- expanding   symbol:  GF_INV_16.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_16.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_16.sch
entity GF_INV_16 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end GF_INV_16 ;

architecture arch_GF_INV_16 of GF_INV_16 is

begin
M1 : nfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 5.6e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 1.12e-05 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_GF_INV_16 ;


-- expanding   symbol:  GF_INV_STAGE.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_STAGE.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_STAGE.sch
entity GF_INV_STAGE is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end GF_INV_STAGE ;

architecture arch_GF_INV_STAGE of GF_INV_STAGE is

begin
M1 : nfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 2.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_GF_INV_STAGE ;


-- expanding   symbol:  Delay_Cell.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Delay_Cell.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Delay_Cell.sch
entity Delay_Cell is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  VCONT : inout std_logic ;
  IN : inout std_logic ;
  INB : inout std_logic ;
  OUT : inout std_logic ;
  OUTB : inout std_logic ;
  EN : inout std_logic
);
end Delay_Cell ;

architecture arch_Delay_Cell of Delay_Cell is


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
begin
M1 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUTB ,
   G => OUT ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net3 ,
   G => net1 ,
   S => VDD ,
   B => VDD
);

M4 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => OUTB ,
   S => VDD ,
   B => VDD
);

M5 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUTB ,
   G => OUTB ,
   S => net3 ,
   B => VDD
);

M6 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => OUT ,
   S => net3 ,
   B => VDD
);

M7 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => net2 ,
   B => VSS
);

M9 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUTB ,
   G => INB ,
   S => net2 ,
   B => VSS
);

M3 : pfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => net1 ,
   S => VDD ,
   B => VDD
);

M10 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => VCONT ,
   S => VSS ,
   B => VSS
);

M8 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 2.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => EN ,
   S => VSS ,
   B => VSS
);

M11 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 1.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net2 ,
   S => net2 ,
   B => VSS
);

M12 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 1.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => net2 ,
   S => net2 ,
   B => VSS
);

end arch_Delay_Cell ;


-- expanding   symbol:  NAND_pfd.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND_pfd.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND_pfd.sch
entity NAND_pfd is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end NAND_pfd ;

architecture arch_NAND_pfd of NAND_pfd is


signal net1 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN2 ,
   S => VSS ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => net1 ,
   B => VSS
);

M5 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

end arch_NAND_pfd ;


-- expanding   symbol:  inv_DFF.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_DFF.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/inv_DFF.sch
entity inv_DFF is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end inv_DFF ;

architecture arch_inv_DFF of inv_DFF is

begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 4.4e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 1.6e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_inv_DFF ;


-- expanding   symbol:  GF_INV_PFD.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_PFD.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_PFD.sch
entity GF_INV_PFD is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end GF_INV_PFD ;

architecture arch_GF_INV_PFD of GF_INV_PFD is

begin
M1 : nfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 4.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 3.5e-07 ,
   W => 2.0e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_GF_INV_PFD ;


-- expanding   symbol:  CLK_div_10.sym # of pins=9
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_10.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_10.sch
entity CLK_div_10 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv10 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_10 ;

architecture arch_CLK_div_10 of CLK_div_10 is

component JK_flipflop 
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end component ;

component and_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component nor_3 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end component ;

component Buffer_Delayed 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
begin
x9 : nor_3
port map (
   IN1 => Q3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Vdiv10 ,
   IN3 => net8 ,
   IN2 => net2
);

x6 : and_2
port map (
   IN1 => Q2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN2 => Q0
);

x7 : and_2
port map (
   IN1 => Q2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => Q1
);

x10 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q0 ,
   J => VDD ,
   Qb => net5 ,
   RST => RST ,
   K => VDD
);

x11 : JK_flipflop
port map (
   CLK => Q0 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q1 ,
   J => net4 ,
   Qb => net6 ,
   RST => RST ,
   K => VDD
);

x12 : JK_flipflop
port map (
   CLK => Q1 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q2 ,
   J => VDD ,
   Qb => net7 ,
   RST => RST ,
   K => VDD
);

x13 : JK_flipflop
port map (
   CLK => Q0 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q3 ,
   J => net3 ,
   Qb => net4 ,
   RST => RST ,
   K => VDD
);

x14 : and_2
port map (
   IN1 => Q1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => Q2
);

x1 : Buffer_Delayed
port map (
   VSS => VSS ,
   IN => net1 ,
   OUT => net8 ,
   VDD => VDD
);

end arch_CLK_div_10 ;


-- expanding   symbol:  JK_flipflop.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/JK_flipflop.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/JK_flipflop.sch
entity JK_flipflop is
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end JK_flipflop ;

architecture arch_JK_flipflop of JK_flipflop is

component NAND 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component nand_3 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end component ;

component GF_INV 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal CLK_b : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
begin
x1 : nand_3
port map (
   IN1 => Qb ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net6 ,
   IN3 => J ,
   IN2 => CLK
);

x2 : nand_3
port map (
   IN1 => Q ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net5 ,
   IN3 => K ,
   IN2 => CLK
);

x4 : nand_3
port map (
   IN1 => net2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN3 => net5 ,
   IN2 => RST
);

x9 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => CLK_b ,
   IN => CLK
);

x3 : NAND
port map (
   IN1 => net1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => net6
);

x5 : NAND
port map (
   IN1 => CLK_b ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net4 ,
   IN2 => net1
);

x6 : NAND
port map (
   IN1 => CLK_b ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => net2
);

x7 : NAND
port map (
   IN1 => Qb ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Q ,
   IN2 => net3
);

x8 : NAND
port map (
   IN1 => Q ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Qb ,
   IN2 => net4
);

end arch_JK_flipflop ;


-- expanding   symbol:  CLK_div_11_new.sym # of pins=9
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_11_new.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_11_new.sch
entity CLK_div_11_new is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  RST : in std_logic ;
  Vdiv11 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  CLK : in std_logic
);
end CLK_div_11_new ;

architecture arch_CLK_div_11_new of CLK_div_11_new is

component JK_flipflop 
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end component ;

component or_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component and_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component nor_3 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end component ;

component Buffer_Delayed 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component nand_3 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end component ;

component GF_INV 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net13 : std_logic ;
signal net14 : std_logic ;
signal net15 : std_logic ;
signal net16 : std_logic ;
signal net17 : std_logic ;
signal net18 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x1 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q3 ,
   J => net1 ,
   Qb => net10 ,
   RST => RST ,
   K => net1
);

x2 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q2 ,
   J => net2 ,
   Qb => net17 ,
   RST => RST ,
   K => net2
);

x3 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q1 ,
   J => net3 ,
   Qb => net9 ,
   RST => RST ,
   K => net3
);

x4 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q0 ,
   J => net4 ,
   Qb => net18 ,
   RST => RST ,
   K => net4
);

x5 : or_2
port map (
   IN1 => net5 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN2 => net6
);

x7 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net6 ,
   IN => net7
);

x8 : nand_3
port map (
   IN1 => Q2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net7 ,
   IN3 => Q1 ,
   IN2 => Q0
);

x10 : or_2
port map (
   IN1 => net9 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net4 ,
   IN2 => net10
);

x11 : or_2
port map (
   IN1 => net8 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => Q0
);

x13 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net14 ,
   IN => net11
);

x14 : nand_3
port map (
   IN1 => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net11 ,
   IN3 => net12 ,
   IN2 => Q0
);

x17 : nor_3
port map (
   IN1 => Q3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net15 ,
   IN3 => net16 ,
   IN2 => net13
);

x18 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => Vdiv11 ,
   IN => net15
);

x6 : and_2
port map (
   IN1 => Q3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net5 ,
   IN2 => Q1
);

x12 : and_2
port map (
   IN1 => Q3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net8 ,
   IN2 => Q1
);

x15 : and_2
port map (
   IN1 => net12 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net13 ,
   IN2 => Q1
);

x9 : and_2
port map (
   IN1 => Q1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => Q0
);

x16 : Buffer_Delayed
port map (
   VSS => VSS ,
   IN => net14 ,
   OUT => net16 ,
   VDD => VDD
);

x19 : Buffer_Delayed
port map (
   VSS => VSS ,
   IN => Q2 ,
   OUT => net12 ,
   VDD => VDD
);

end arch_CLK_div_11_new ;


-- expanding   symbol:  CLK_div_31.sym # of pins=10
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_31.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/CLK_div_31.sch
entity CLK_div_31 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q0 : out std_logic ;
  Q1 : out std_logic ;
  Q2 : out std_logic ;
  Q3 : out std_logic ;
  Q4 : out std_logic ;
  Vdiv31 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end CLK_div_31 ;

architecture arch_CLK_div_31 of CLK_div_31 is

component JK_flipflop 
port (
  CLK : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Q : out std_logic ;
  J : in std_logic ;
  Qb : out std_logic ;
  RST : in std_logic ;
  K : in std_logic
);
end component ;

component or_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;

component nand_5 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  A : in std_logic ;
  VOUT : out std_logic ;
  D : in std_logic ;
  C : in std_logic ;
  E : in std_logic ;
  B : in std_logic
);
end component ;

component and_5 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  A : in std_logic ;
  VOUT : out std_logic ;
  D : in std_logic ;
  C : in std_logic ;
  E : in std_logic ;
  B : in std_logic
);
end component ;

component Buffer_Delayed1 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
begin
x1 : JK_flipflop
port map (
   CLK => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q0 ,
   J => VDD ,
   Qb => net3 ,
   RST => RST ,
   K => VDD
);

x2 : JK_flipflop
port map (
   CLK => Q0 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q1 ,
   J => VDD ,
   Qb => net4 ,
   RST => RST ,
   K => VDD
);

x3 : JK_flipflop
port map (
   CLK => Q1 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q2 ,
   J => VDD ,
   Qb => net5 ,
   RST => RST ,
   K => VDD
);

x4 : JK_flipflop
port map (
   CLK => Q2 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q3 ,
   J => VDD ,
   Qb => net6 ,
   RST => RST ,
   K => VDD
);

x5 : JK_flipflop
port map (
   CLK => Q3 ,
   VSS => VSS ,
   VDD => VDD ,
   Q => Q4 ,
   J => VDD ,
   Qb => net7 ,
   RST => RST ,
   K => VDD
);

x6 : nand_5
port map (
   VSS => VSS ,
   VDD => VDD ,
   A => Q4 ,
   VOUT => RST ,
   D => Q3 ,
   C => Q2 ,
   E => Q1 ,
   B => Q0
);

x10 : or_2
port map (
   IN1 => net2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Vdiv31 ,
   IN2 => Q4
);

x7 : and_5
port map (
   VSS => VSS ,
   VDD => VDD ,
   A => Q1 ,
   VOUT => net1 ,
   D => Q2 ,
   C => Q3 ,
   E => CLK ,
   B => Q0
);

x8 : Buffer_Delayed1
port map (
   VSS => VSS ,
   IN => net1 ,
   OUT => net2 ,
   VDD => VDD
);

end arch_CLK_div_31 ;


-- expanding   symbol:  and_3_ibr.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_3_ibr.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_3_ibr.sch
entity and_3_ibr is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end and_3_ibr ;

architecture arch_and_3_ibr of and_3_ibr is

component inv_my_ibr 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component nand3_ibr 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x1 : nand3_ibr
port map (
   IN1 => IN1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN3 => IN3 ,
   IN2 => IN2
);

x2 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => net1 ,
   OUT => OUT ,
   VDD => VDD
);

end arch_and_3_ibr ;


-- expanding   symbol:  or_2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/or_2.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/or_2.sch
entity or_2 is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end or_2 ;

architecture arch_or_2 of or_2 is

component GF_INV 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN1 ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN1 ,
   S => net2 ,
   B => VDD
);

M7 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN2 ,
   S => VSS ,
   B => VSS
);

M3 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

x1 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

end arch_or_2 ;


-- expanding   symbol:  and_2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_2.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_2.sch
entity and_2 is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end and_2 ;

architecture arch_and_2 of and_2 is


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
M7 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => net1 ,
   S => VDD ,
   B => VDD
);

M6 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => net1 ,
   S => VSS ,
   B => VSS
);

M1 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN1 ,
   S => VDD ,
   B => VDD
);

M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN1 ,
   S => net2 ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 2 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => IN2 ,
   S => VSS ,
   B => VSS
);

end arch_and_2 ;


-- expanding   symbol:  and_2_ibr..sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_2_ibr..sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_2_ibr..sch
entity and_2_ibr. is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end and_2_ibr. ;

architecture arch_and_2_ibr. of and_2_ibr. is

component inv_my_ibr 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

component NAND_ibr 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x2 : inv_my_ibr
port map (
   VSS => VSS ,
   IN => net1 ,
   OUT => OUT ,
   VDD => VDD
);

x1 : NAND_ibr
port map (
   IN1 => IN1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN2 => IN2
);

end arch_and_2_ibr. ;


-- expanding   symbol:  GF_INV_opd.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_opd.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV_opd.sch
entity GF_INV_opd is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end GF_INV_opd ;

architecture arch_GF_INV_opd of GF_INV_opd is

begin
M1 : nfet_03v3
generic map (
   L => 1.0e-06 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 1.0e-06 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_GF_INV_opd ;


-- expanding   symbol:  nor_3.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nor_3.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nor_3.sch
entity nor_3 is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end nor_3 ;

architecture arch_nor_3 of nor_3 is


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN3 ,
   S => VSS ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => VSS ,
   B => VSS
);

M7 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN2 ,
   S => VSS ,
   B => VSS
);

M8 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN2 ,
   S => net2 ,
   B => VDD
);

M9 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => IN3 ,
   S => VDD ,
   B => VDD
);

M10 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => net1 ,
   B => VDD
);

end arch_nor_3 ;


-- expanding   symbol:  Buffer_Delayed.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Buffer_Delayed.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Buffer_Delayed.sch
entity Buffer_Delayed is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end Buffer_Delayed ;

architecture arch_Buffer_Delayed of Buffer_Delayed is

component Inverter_Delayed 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x2 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN => IN
);

x3 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

end arch_Buffer_Delayed ;


-- expanding   symbol:  nand_3.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nand_3.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nand_3.sch
entity nand_3 is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end nand_3 ;

architecture arch_nand_3 of nand_3 is


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN3 ,
   S => VSS ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => net2 ,
   B => VSS
);

M1 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN3 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => VDD ,
   B => VDD
);

M7 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => IN2 ,
   S => net1 ,
   B => VSS
);

M8 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

end arch_nand_3 ;


-- expanding   symbol:  GF_INV.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/GF_INV.sch
entity GF_INV is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end GF_INV ;

architecture arch_GF_INV of GF_INV is

begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_GF_INV ;


-- expanding   symbol:  nand_5.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nand_5.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nand_5.sch
entity nand_5 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  A : in std_logic ;
  VOUT : out std_logic ;
  D : in std_logic ;
  C : in std_logic ;
  E : in std_logic ;
  B : in std_logic
);
end nand_5 ;

architecture arch_nand_5 of nand_5 is

component GF_INV 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;

component and_5 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  A : in std_logic ;
  VOUT : out std_logic ;
  D : in std_logic ;
  C : in std_logic ;
  E : in std_logic ;
  B : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x5 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => VOUT ,
   IN => net1
);

x1 : and_5
port map (
   VSS => VSS ,
   VDD => VDD ,
   A => A ,
   VOUT => net1 ,
   D => D ,
   C => C ,
   E => E ,
   B => B
);

end arch_nand_5 ;


-- expanding   symbol:  and_5.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_5.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/and_5.sch
entity and_5 is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  A : in std_logic ;
  VOUT : out std_logic ;
  D : in std_logic ;
  C : in std_logic ;
  E : in std_logic ;
  B : in std_logic
);
end and_5 ;

architecture arch_and_5 of and_5 is

component and_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
begin
x1 : and_2
port map (
   IN1 => A ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN2 => B
);

x2 : and_2
port map (
   IN1 => C ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => net1
);

x3 : and_2
port map (
   IN1 => D ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => net2
);

x4 : and_2
port map (
   IN1 => E ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => VOUT ,
   IN2 => net3
);

end arch_and_5 ;


-- expanding   symbol:  Buffer_Delayed1.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Buffer_Delayed1.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Buffer_Delayed1.sch
entity Buffer_Delayed1 is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end Buffer_Delayed1 ;

architecture arch_Buffer_Delayed1 of Buffer_Delayed1 is

component Inverter_Delayed 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net13 : std_logic ;
signal net14 : std_logic ;
signal net15 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
begin
x2 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN => IN
);

x3 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN => net2
);

x1 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net4 ,
   IN => net1
);

x4 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN => net4
);

x5 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net6 ,
   IN => net3
);

x6 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net5 ,
   IN => net6
);

x7 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net8 ,
   IN => net5
);

x8 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net7 ,
   IN => net8
);

x9 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net10 ,
   IN => net7
);

x10 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net9 ,
   IN => net10
);

x11 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net12 ,
   IN => net9
);

x12 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net11 ,
   IN => net12
);

x13 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net13 ,
   IN => net11
);

x14 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net15 ,
   IN => net13
);

x15 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net14 ,
   IN => net15
);

x16 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net14
);

end arch_Buffer_Delayed1 ;


-- expanding   symbol:  nand3_ibr.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nand3_ibr.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/nand3_ibr.sch
entity nand3_ibr is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN3 : in std_logic ;
  IN2 : in std_logic
);
end nand3_ibr ;

architecture arch_nand3_ibr of nand3_ibr is


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN3 ,
   S => VSS ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => net2 ,
   B => VSS
);

M1 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN3 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => VDD ,
   B => VDD
);

M7 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 3 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net2 ,
   G => IN2 ,
   S => net1 ,
   B => VSS
);

M8 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

end arch_nand3_ibr ;


-- expanding   symbol:  NAND_ibr.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND_ibr.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/NAND_ibr.sch
entity NAND_ibr is
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
);
end NAND_ibr ;

architecture arch_NAND_ibr of NAND_ibr is


signal net1 : std_logic ;
begin
M3 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.8e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => net1 ,
   G => IN2 ,
   S => VSS ,
   B => VSS
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 8.8e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => net1 ,
   B => VSS
);

M5 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 1.6e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN1 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 1.6e-06 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN2 ,
   S => VDD ,
   B => VDD
);

end arch_NAND_ibr ;


-- expanding   symbol:  Inverter_Delayed.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Inverter_Delayed.sym
-- sch_path: /home/shahid/GF180Projects/Top_test3/Top_test/top/xschem/Inverter_Delayed.sch
entity Inverter_Delayed is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end Inverter_Delayed ;

architecture arch_Inverter_Delayed of Inverter_Delayed is

begin
M1 : nfet_03v3
generic map (
   L => 1.0e-06 ,
   W => 2.2e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => nfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 1.0e-06 ,
   W => 8.0e-07 ,
   nf => 1 ,
   m => 1 ,
   ad => 'int((nf+1)/2) * W/nf * 0.18u' ,
   pd => '2*int((nf+1)/2) * (W/nf + 0.18u)' ,
   as => 'int((nf+2)/2) * W/nf * 0.18u' ,
   ps => '2*int((nf+2)/2) * (W/nf + 0.18u)' ,
   nrd => '0.18u / W' ,
   nrs => '0.18u / W' ,
   sa => 0 ,
   sb => 0 ,
   sd => 0 ,
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => IN ,
   S => VDD ,
   B => VDD
);

end arch_Inverter_Delayed ;

