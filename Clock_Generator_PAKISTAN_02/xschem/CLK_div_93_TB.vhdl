-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/CLK_div_93_TB.sch
entity CLK_div_93_TB is
end CLK_div_93_TB ;

architecture arch_CLK_div_93_TB of CLK_div_93_TB is

component CLK_div_93 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  Vdiv93 : out std_logic ;
  RST : in std_logic ;
  CLK : in std_logic
);
end component ;


signal RST : std_logic ;
signal VDD : std_logic ;
signal VSS : std_logic ;
signal Vdiv93 : std_logic ;
signal CLK : std_logic ;
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
   value => pulse(3.3 0 0 100p 100p 2.50n 5n)
)
port map (
   p => CLK ,
   m => VSS
);

C5 : capa
generic map (
   m => 1 ,
   value => 1.0e-14 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => Vdiv93 ,
   m => VSS
);

x1 : CLK_div_93
port map (
   VSS => VSS ,
   VDD => VDD ,
   Vdiv93 => Vdiv93 ,
   RST => RST ,
   CLK => CLK
);

V5 : vsource
generic map (
   value => PWL( 0 0 10n 0 10.001n 3)
)
port map (
   p => RST ,
   m => VSS
);


.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical



.control
save all
tran 50p 1u
plot v(CLK) v(Vdiv93)+3.5 
write CLK_div_93_TB.raw
.endc

end arch_CLK_div_93_TB ;


-- expanding   symbol:  CLK_div_93.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/CLK_div_93.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/CLK_div_93.sch
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
   CLK => CLK
);

x2 : CLK_div_3
port map (
   VSS => net7 ,
   VDD => net8 ,
   Q0 => net9 ,
   Q1 => net10 ,
   RST => RST ,
   Vdiv3 => Vdiv93 ,
   CLK => net1
);

end arch_CLK_div_93 ;


-- expanding   symbol:  CLK_div_31.sym # of pins=9
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/CLK_div_31.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/CLK_div_31.sch
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

component or_2 
port (
  IN1 : in std_logic ;
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  OUT : out std_logic ;
  IN2 : in std_logic
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


signal RST : std_logic ;
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
   IN1 => Q4 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Vdiv31 ,
   IN2 => net2
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


-- expanding   symbol:  CLK_div_3.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/CLK_div_3.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/CLK_div_3.sch
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


-- expanding   symbol:  JK_flipflop.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/JK_flipflop.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/JK_flipflop.sch
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
   IN1 => J ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net5 ,
   IN3 => Qb ,
   IN2 => CLK
);

x2 : nand_3
port map (
   IN1 => CLK ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net6 ,
   IN3 => Q ,
   IN2 => K
);

x4 : nand_3
port map (
   IN1 => net6 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN3 => net1 ,
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
   IN1 => net5 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN2 => net2
);

x5 : NAND
port map (
   IN1 => CLK_b ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => net2
);

x6 : NAND
port map (
   IN1 => net1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net4 ,
   IN2 => CLK_b
);

x7 : NAND
port map (
   IN1 => net4 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Q ,
   IN2 => Qb
);

x8 : NAND
port map (
   IN1 => net3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => Qb ,
   IN2 => Q
);

end arch_JK_flipflop ;


-- expanding   symbol:  nand_5.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/nand_5.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/nand_5.sch
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

component and_2 
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


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
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
   IN1 => net1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => C
);

x3 : and_2
port map (
   IN1 => net2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => D
);

x4 : and_2
port map (
   IN1 => net3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net4 ,
   IN2 => E
);

x5 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => VOUT ,
   IN => net4
);

end arch_nand_5 ;


-- expanding   symbol:  or_2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/or_2.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/or_2.sch
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


signal net1 : std_logic ;
signal net2 : std_logic ;
begin
M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.8e-07 ,
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

M5 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.8e-07 ,
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

M6 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.8e-07 ,
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
   D => OUT ,
   G => net1 ,
   S => VDD ,
   B => VDD
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.8e-07 ,
   nf => 1 ,
   m => 4 ,
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
   W => 2.8e-07 ,
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
   W => 2.8e-07 ,
   nf => 1 ,
   m => 4 ,
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

end arch_or_2 ;


-- expanding   symbol:  and_5.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/and_5.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/and_5.sch
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
   IN1 => net1 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net2 ,
   IN2 => C
);

x3 : and_2
port map (
   IN1 => net2 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => net3 ,
   IN2 => D
);

x4 : and_2
port map (
   IN1 => net3 ,
   VSS => VSS ,
   VDD => VDD ,
   OUT => VOUT ,
   IN2 => E
);

end arch_and_5 ;


-- expanding   symbol:  Buffer_Delayed1.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/Buffer_Delayed1.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/Buffer_Delayed1.sch
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
   OUT => net14 ,
   IN => net11
);

x14 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net13 ,
   IN => net14
);

x15 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net15 ,
   IN => net13
);

x16 : Inverter_Delayed
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net15
);

end arch_Buffer_Delayed1 ;


-- expanding   symbol:  and_2.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/and_2.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/and_2.sch
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


-- expanding   symbol:  nand_3.sym # of pins=6
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/nand_3.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/nand_3.sch
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
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/GF_INV.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/GF_INV.sch
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
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/NAND.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/NAND.sch
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


-- expanding   symbol:  Inverter_Delayed.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/Inverter_Delayed.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/Inverter_Delayed.sch
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

