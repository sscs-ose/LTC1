-- sch_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/CLK_div_2_TB.sch
entity CLK_div_2_TB is
end CLK_div_2_TB ;

architecture arch_CLK_div_2_TB of CLK_div_2_TB is

component CLK_div_2 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv2 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;


signal RST : std_logic ;
signal VDD : std_logic ;
signal VSS : std_logic ;
signal CLK : std_logic ;
signal Vdiv2 : std_logic ;
signal GND : std_logic ;
begin
V1 : vsource
generic map (
   value => 3.3
)
port map (
   p => VDD ,
   m => VSS
);

V2 : vsource
generic map (
   value => 0
)
port map (
   p => VSS ,
   m => GND
);

V3 : vsource
generic map (
   value => pulse(0 3.3 0 100p 100p 2.50n 5n)
)
port map (
   p => CLK ,
   m => VSS
);

C1 : capa
generic map (
   m => 1 ,
   value => 1.0e-14 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => Vdiv2 ,
   m => VSS
);

V5 : vsource
generic map (
   value => PWL( 0 0 10n 0 10.001n 3)
)
port map (
   p => RST ,
   m => VSS
);

x1 : CLK_div_2
port map (
   VSS => VSS ,
   VDD => VDD ,
   Vdiv2 => Vdiv2 ,
   RST => RST ,
   CLK => CLK
);


.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical



.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv5)+3.5
*write CLK_div_3_TB.raw
.endc

end arch_CLK_div_2_TB ;


-- expanding   symbol:  CLK_div_2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/CLK_div_2.sym
-- sch_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/CLK_div_2.sch
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


-- expanding   symbol:  JK_flipflop.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/JK_flipflop.sym
-- sch_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/JK_flipflop.sch
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

component NAND 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
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


-- expanding   symbol:  nand_3.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/nand_3.sym
-- sch_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/nand_3.sch
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
-- sym_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/GF_INV.sym
-- sch_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/GF_INV.sch
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


-- expanding   symbol:  NAND.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/NAND.sym
-- sch_path: /home/shahid/GF180Projects/Dividers/pre_Umra_final/pre_Umra/Xschem/NAND.sch
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

