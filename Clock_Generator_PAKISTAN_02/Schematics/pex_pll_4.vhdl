-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/pex_pll_4.sch
entity pex_pll_4 is
end pex_pll_4 ;

architecture arch_pex_pll_4 of pex_pll_4 is

component LF 
port (
  VCNTL : inout std_logic ;
  VDD : inout std_logic ;
  VSS : inout std_logic
);
end component ;

component CLK_div_100 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  RST : in std_logic ;
  Vdiv100 : out std_logic ;
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


signal Vref : std_logic ;
signal IPD+ : std_logic ;
signal IPD_ : std_logic ;
signal VDD : std_logic ;
signal VSS : std_logic ;
signal PD : std_logic ;
signal PU : std_logic ;
signal VCO_op_bar : std_logic ;
signal RST_DIV : std_logic ;
signal Vdiv : std_logic ;
signal VCO_op : std_logic ;
signal vcntl : std_logic ;
signal VDD_VCO : std_logic ;
signal GND : std_logic ;
begin
VCNTL : vsource
generic map (
   value => pulse(3.3 0 0 100p 100p 250n 500n)
)
port map (
   p => Vref ,
   m => GND
);

V2 : vsource
generic map (
   value => PWL( 0 0 100n 0 100.001n 3.3)
)
port map (
   p => VDD_VCO ,
   m => GND
);

V1 : vsource
generic map (
   value => 3.3
)
port map (
   p => VDD ,
   m => VSS
);

V3 : vsource
generic map (
   value => 0
)
port map (
   p => VSS ,
   m => GND
);

V5 : vsource
generic map (
   value => PWL( 0 0 10n 0 10.001n 3)
)
port map (
   p => RST_DIV ,
   m => VSS
);

I0 : isource
generic map (
   value => 2.0e-05
)
port map (
   p => IPD_ ,
   m => VSS
);

I1 : isource
generic map (
   value => 2.0e-05
)
port map (
   p => VDD ,
   m => IPD+
);

x7 : LF
port map (
   VCNTL => vcntl ,
   VDD => VDD ,
   VSS => VSS
);

x2 : CLK_div_100
port map (
   VSS => VSS ,
   VDD => VDD ,
   RST => RST_DIV ,
   Vdiv100 => Vdiv ,
   CLK => VCO_op
);

x4 : CP
port map (
   IPD+ => IPD+ ,
   IPD_ => IPD_ ,
   PU => PU ,
   PD => PD ,
   VCNTL => vcntl ,
   VSS => VSS ,
   VDD => VDD
);

x3 : PFD
port map (
   VSS => VSS ,
   VREF => Vref ,
   VDIV => Vdiv ,
   PU => PU ,
   PD => PD ,
   VDD => VDD
);

x1 : VCO
port map (
   VDD => VDD_VCO ,
   EN => VDD ,
   OUT => VCO_op ,
   OUTB => VCO_op_bar ,
   VCONT => vcntl ,
   VSS => VSS
);


**.include pex_PFD_layout.spice

**.inlcude pex_CP_mag.spice
**.include pex_LF_mag.spice
**.include pex_VCO_mag.spice
**.include pex_CLK_div_110_mag.spice
.control
save all
tran 1n 50u 
plot v(VCO_op) v(VCO_op_bar)+4

**write pll_4.raw
.endc


.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical

end arch_pex_pll_4 ;


-- expanding   symbol:  LF.sym # of pins=3
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/LF.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/LF.sch
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


-- expanding   symbol:  CLK_div_100.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/CLK_div_100.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/CLK_div_100.sch
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


-- expanding   symbol:  CP.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/CP.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/CP.sch
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


-- expanding   symbol:  PFD.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/PFD.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/PFD.sch
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

component inv_my 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;

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

component buffer 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
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
x1 : DFF
port map (
   VSS => VSS ,
   D => VDD ,
   RST => net5 ,
   CLK => net2 ,
   Q => PD ,
   QB => net1 ,
   VDD => VDD
);

x2 : DFF
port map (
   VSS => VSS ,
   D => VDD ,
   RST => net5 ,
   CLK => net4 ,
   Q => PU ,
   QB => net3 ,
   VDD => VDD
);

x3 : NAND
port map (
   IN1 => net7 ,
   VSS => net8 ,
   VDD => net9 ,
   OUT => net10 ,
   IN2 => net11
);

x5 : buffer
port map (
   VSS => VSS ,
   IN => net6 ,
   OUT => net5 ,
   VDD => VDD
);

x6 : inv_my
port map (
   VSS => VSS ,
   IN => VREF ,
   OUT => net4 ,
   VDD => VDD
);

x7 : inv_my
port map (
   VSS => VSS ,
   IN => VDIV ,
   OUT => net2 ,
   VDD => VDD
);

end arch_PFD ;


-- expanding   symbol:  VCO.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/VCO.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/VCO.sch
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
   IN => net10
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
   IN => net2 ,
   INB => net1 ,
   OUT => net10 ,
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
   OUT => net1 ,
   OUTB => net2 ,
   EN => EN
);

end arch_VCO ;


-- expanding   symbol:  res_sch.sym # of pins=3
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/res_sch.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/res_sch.sch
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
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/cap80p.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/cap80p.sch
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
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/cap3p.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/cap3p.sch
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


-- expanding   symbol:  CLK_div_10.sym # of pins=9
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/CLK_div_10.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/CLK_div_10.sch
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

component and_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
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


-- expanding   symbol:  inv_my.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/inv_my.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/inv_my.sch
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


-- expanding   symbol:  DFF.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/DFF.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/DFF.sch
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

component inv_my 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
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


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal net13 : std_logic ;
signal net14 : std_logic ;
signal net15 : std_logic ;
signal net16 : std_logic ;
signal net17 : std_logic ;
signal net18 : std_logic ;
signal net19 : std_logic ;
signal net20 : std_logic ;
signal net21 : std_logic ;
signal net22 : std_logic ;
signal net23 : std_logic ;
signal net24 : std_logic ;
signal net25 : std_logic ;
signal net26 : std_logic ;
signal net27 : std_logic ;
signal net28 : std_logic ;
signal net29 : std_logic ;
signal net30 : std_logic ;
signal net31 : std_logic ;
signal net32 : std_logic ;
signal net33 : std_logic ;
signal net34 : std_logic ;
signal net35 : std_logic ;
signal net36 : std_logic ;
signal net37 : std_logic ;
signal net38 : std_logic ;
signal net39 : std_logic ;
signal net40 : std_logic ;
signal net41 : std_logic ;
signal net42 : std_logic ;
signal net43 : std_logic ;
signal net44 : std_logic ;
signal net45 : std_logic ;
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
x1 : NAND
port map (
   IN1 => net8 ,
   VSS => net9 ,
   VDD => net10 ,
   OUT => net11 ,
   IN2 => net12
);

x2 : NAND
port map (
   IN1 => net13 ,
   VSS => net14 ,
   VDD => net15 ,
   OUT => net16 ,
   IN2 => net17
);

x3 : NAND
port map (
   IN1 => net18 ,
   VSS => net19 ,
   VDD => net20 ,
   OUT => net21 ,
   IN2 => net22
);

x4 : NAND
port map (
   IN1 => net23 ,
   VSS => net24 ,
   VDD => net25 ,
   OUT => net26 ,
   IN2 => net27
);

x5 : NAND
port map (
   IN1 => net28 ,
   VSS => net29 ,
   VDD => net30 ,
   OUT => net31 ,
   IN2 => net32
);

x6 : NAND
port map (
   IN1 => net33 ,
   VSS => net34 ,
   VDD => net35 ,
   OUT => net36 ,
   IN2 => net37
);

x7 : NAND
port map (
   IN1 => net6 ,
   VSS => net38 ,
   VDD => net39 ,
   OUT => net40 ,
   IN2 => net41
);

x8 : NAND
port map (
   IN1 => net3 ,
   VSS => net42 ,
   VDD => net43 ,
   OUT => net44 ,
   IN2 => net45
);

x9 : inv_my
port map (
   VSS => VSS ,
   IN => net6 ,
   OUT => net7 ,
   VDD => VDD
);

end arch_DFF ;


-- expanding   symbol:  NAND.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/NAND.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/NAND.sch
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


-- expanding   symbol:  buffer.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/buffer.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/buffer.sch
entity buffer is
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end buffer ;

architecture arch_buffer of buffer is

component GF_INV 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
);
end component ;


signal net1 : std_logic ;
begin
x1 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

x2 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN => IN
);

end arch_buffer ;


-- expanding   symbol:  GF_INV_1.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_1.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_1.sch
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
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_4.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_4.sch
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
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_16.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_16.sch
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
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_STAGE.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV_STAGE.sch
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
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/Delay_Cell.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/Delay_Cell.sch
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
   D => OUTB ,
   G => OUT ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
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
   G => OUTB ,
   S => VDD ,
   B => VDD
);

M5 : pfet_03v3
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
   G => OUT ,
   S => net3 ,
   B => VDD
);

M7 : nfet_03v3
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
   D => OUT ,
   G => IN ,
   S => net2 ,
   B => VSS
);

M9 : nfet_03v3
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
   D => OUTB ,
   G => INB ,
   S => net2 ,
   B => VSS
);

M3 : pfet_03v3
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
   G => VCONT ,
   S => VSS ,
   B => VSS
);

M8 : nfet_03v3
generic map (
   L => 5.6e-07 ,
   W => 1.2e-06 ,
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

end arch_Delay_Cell ;


-- expanding   symbol:  nor_3.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/nor_3.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/nor_3.sch
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


-- expanding   symbol:  and_2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/and_2.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/and_2.sch
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


-- expanding   symbol:  JK_flipflop.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/JK_flipflop.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/JK_flipflop.sch
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

component GF_INV 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN : in std_logic
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


-- expanding   symbol:  Buffer_Delayed.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/Buffer_Delayed.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/Buffer_Delayed.sch
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


-- expanding   symbol:  GF_INV.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/GF_INV.sch
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


-- expanding   symbol:  nand_3.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/nand_3.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/nand_3.sch
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


-- expanding   symbol:  Inverter_Delayed.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Top_test/top/xschem/Inverter_Delayed.sym
-- sch_path: /home/shahid/GF180Projects/Top_test/top/xschem/Inverter_Delayed.sch
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

