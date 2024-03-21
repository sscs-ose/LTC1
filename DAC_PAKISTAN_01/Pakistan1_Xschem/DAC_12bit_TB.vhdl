-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/DAC_12bit_TB.sch
entity DAC_12bit_TB is
end DAC_12bit_TB ;

architecture arch_DAC_12bit_TB of DAC_12bit_TB is

component DAC_12Bit 
port (
  B5 : in std_logic ;
  B9 : in std_logic ;
  VDD : inout std_logic ;
  I1 : in std_logic ;
  B11 : in std_logic ;
  B1 : in std_logic ;
  B7 : in std_logic ;
  Iout- : out std_logic ;
  B3 : in std_logic ;
  B12 : in std_logic ;
  B10 : in std_logic ;
  B4 : in std_logic ;
  B8 : in std_logic ;
  Iout+ : out std_logic ;
  I2 : in std_logic ;
  B6 : in std_logic ;
  B2 : in std_logic ;
  VSS : inout std_logic
);
end component ;


signal net10 : std_logic ;
signal net11 : std_logic ;
signal net12 : std_logic ;
signal Out+ : std_logic ;
signal Out- : std_logic ;
signal VDD : std_logic ;
signal VSS : std_logic ;
signal I1 : std_logic ;
signal I2 : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
signal GND : std_logic ;
begin
x1 : DAC_12Bit
port map (
   B5 => net2 ,
   B9 => net10 ,
   VDD => VDD ,
   I1 => I1 ,
   B11 => net8 ,
   B1 => net6 ,
   B7 => net12 ,
   Iout- => Out- ,
   B3 => net4 ,
   B12 => net9 ,
   B10 => net7 ,
   B4 => net1 ,
   B8 => net11 ,
   Iout+ => Out+ ,
   I2 => I2 ,
   B6 => net3 ,
   B2 => net5 ,
   VSS => VSS
);

V1 : vsource
generic map (
   value => 0
)
port map (
   p => VSS ,
   m => GND
);

V2 : vsource
generic map (
   value => 3.3
)
port map (
   p => VDD ,
   m => VSS
);

V6 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 20n 40n)
)
port map (
   p => net1 ,
   m => VSS
);

V7 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 40n 80n)
)
port map (
   p => net2 ,
   m => VSS
);

V8 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 80n 160n)
)
port map (
   p => net3 ,
   m => VSS
);

V10 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 10n 20n)
)
port map (
   p => net4 ,
   m => VSS
);

V11 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 5n 10n)
)
port map (
   p => net5 ,
   m => VSS
);

V12 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 2.5n 5n)
)
port map (
   p => net6 ,
   m => VSS
);

I0 : isource
generic map (
   value => 2.0e-05
)
port map (
   p => VDD ,
   m => I1
);

V3 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 1280n 2560n)
)
port map (
   p => net7 ,
   m => VSS
);

V4 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 2560n 5120n)
)
port map (
   p => net8 ,
   m => VSS
);

V5 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 5120n 10240n)
)
port map (
   p => net9 ,
   m => VSS
);

V9 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 640n 1280n)
)
port map (
   p => net10 ,
   m => VSS
);

V13 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 320n 640n)
)
port map (
   p => net11 ,
   m => VSS
);

V14 : vsource
generic map (
   value => pulse(0 3.3 0 10p 10p 160n 320n)
)
port map (
   p => net12 ,
   m => VSS
);

I1 : isource
generic map (
   value => 2.0e-05
)
port map (
   p => VDD ,
   m => I2
);

R1 : res
generic map (
   value => 25 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => Out+ ,
   M => VDD
);

R2 : res
generic map (
   value => 25 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => Out- ,
   M => VDD
);


.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical



.control
save all
op

tran 100p 10240n
plot v(Out-) v(Out+) 
*write test_nfet_03v3.raw
.endc

end arch_DAC_12bit_TB ;


-- expanding   symbol:  DAC_12Bit.sym # of pins=18
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/DAC_12Bit.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/DAC_12Bit.sch
entity DAC_12Bit is
port (
  B5 : in std_logic ;
  B9 : in std_logic ;
  VDD : inout std_logic ;
  I1 : in std_logic ;
  B11 : in std_logic ;
  B1 : in std_logic ;
  B7 : in std_logic ;
  Iout- : out std_logic ;
  B3 : in std_logic ;
  B12 : in std_logic ;
  B10 : in std_logic ;
  B4 : in std_logic ;
  B8 : in std_logic ;
  Iout+ : out std_logic ;
  I2 : in std_logic ;
  B6 : in std_logic ;
  B2 : in std_logic ;
  VSS : inout std_logic
);
end DAC_12Bit ;

architecture arch_DAC_12Bit of DAC_12Bit is

component MSB_6Bit 
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  B11 : in std_logic ;
  B7 : in std_logic ;
  B8 : in std_logic ;
  B12 : in std_logic ;
  B9 : in std_logic ;
  IM_T : in std_logic ;
  B10 : in std_logic ;
  IOUT- : out std_logic ;
  IOUT+ : out std_logic
);
end component ;

component LSB 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  B1 : in std_logic ;
  B2 : in std_logic ;
  B3 : in std_logic ;
  B4 : in std_logic ;
  B5 : in std_logic ;
  B6 : in std_logic ;
  CLK : in std_logic ;
  ITAIL : in std_logic ;
  IOUT+ : out std_logic ;
  IOUT- : out std_logic
);
end component ;

begin
x1 : MSB_6Bit
port map (
   VSS => VSS ,
   VDD => VDD ,
   B11 => B11 ,
   B7 => B7 ,
   B8 => B8 ,
   B12 => B12 ,
   B9 => B9 ,
   IM_T => I2 ,
   B10 => B10 ,
   IOUT- => Iout- ,
   IOUT+ => Iout+
);

x2 : LSB
port map (
   VDD => VDD ,
   VSS => VSS ,
   B1 => B1 ,
   B2 => B2 ,
   B3 => B3 ,
   B4 => B4 ,
   B5 => B5 ,
   B6 => B6 ,
   CLK => VDD ,
   ITAIL => I1 ,
   IOUT+ => Iout+ ,
   IOUT- => Iout-
);

end arch_DAC_12Bit ;


-- expanding   symbol:  MSB_6Bit.sym # of pins=11
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/MSB_6Bit.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/MSB_6Bit.sch
entity MSB_6Bit is
port (
  VSS : inout std_logic ;
  VDD : inout std_logic ;
  B11 : in std_logic ;
  B7 : in std_logic ;
  B8 : in std_logic ;
  B12 : in std_logic ;
  B9 : in std_logic ;
  IM_T : in std_logic ;
  B10 : in std_logic ;
  IOUT- : out std_logic ;
  IOUT+ : out std_logic
);
end MSB_6Bit ;

architecture arch_MSB_6Bit of MSB_6Bit is

component MSB_UNIT_CELL 
port (
  IOUT+ : out std_logic ;
  IOUT- : out std_logic ;
  VDD : inout std_logic ;
  Ri-1 : in std_logic ;
  Ri : in std_logic ;
  Ci : in std_logic ;
  IM_T : in std_logic ;
  IM : in std_logic ;
  VSS : inout std_logic
);
end component ;

component Thermo_Decoder 
port (
  D1 : out std_logic ;
  VDD : inout std_logic ;
  D2 : out std_logic ;
  VSS : inout std_logic ;
  D3 : out std_logic ;
  B1 : in std_logic ;
  D4 : out std_logic ;
  D5 : out std_logic ;
  B2 : in std_logic ;
  D6 : out std_logic ;
  B3 : in std_logic ;
  D7 : out std_logic
);
end component ;


signal C0 : std_logic ;
signal C1 : std_logic ;
signal C2 : std_logic ;
signal C3 : std_logic ;
signal C4 : std_logic ;
signal C5 : std_logic ;
signal C6 : std_logic ;
signal IM : std_logic ;
signal R0 : std_logic ;
signal R1 : std_logic ;
signal R2 : std_logic ;
signal R3 : std_logic ;
signal R4 : std_logic ;
signal R5 : std_logic ;
signal R6 : std_logic ;
begin
x57 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x58 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x59 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x60 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x61 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x62 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x63 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x64 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => VDD ,
   Ri => R0 ,
   Ci => VSS ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x1 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x2 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x3 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x4 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x5 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x6 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x7 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x8 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R0 ,
   Ri => R1 ,
   Ci => VSS ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x9 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x10 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x11 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x12 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x13 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x14 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x15 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x16 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R1 ,
   Ri => R2 ,
   Ci => R2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x17 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x18 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x19 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x20 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x21 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x22 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x23 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x24 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R2 ,
   Ri => R3 ,
   Ci => VSS ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x25 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x26 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x27 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x28 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x29 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x30 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x31 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x32 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R3 ,
   Ri => R4 ,
   Ci => VSS ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x33 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x34 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x35 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x36 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x37 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x38 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x39 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x40 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R4 ,
   Ri => R5 ,
   Ci => VSS ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x41 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x42 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x43 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x44 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x45 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x46 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x47 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x48 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R5 ,
   Ri => R6 ,
   Ci => VSS ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x49 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R6 ,
   Ri => VSS ,
   Ci => C0 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x50 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R6 ,
   Ri => VSS ,
   Ci => C1 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x51 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R6 ,
   Ri => VSS ,
   Ci => C2 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x52 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R6 ,
   Ri => VSS ,
   Ci => C3 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x53 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R6 ,
   Ri => VSS ,
   Ci => C4 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x54 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R6 ,
   Ri => VSS ,
   Ci => C5 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x55 : MSB_UNIT_CELL
port map (
   IOUT+ => IOUT+ ,
   IOUT- => IOUT- ,
   VDD => VDD ,
   Ri-1 => R6 ,
   Ri => VSS ,
   Ci => C6 ,
   IM_T => IM_T ,
   IM => IM ,
   VSS => VSS
);

x56 : Thermo_Decoder
port map (
   D1 => C6 ,
   VDD => VDD ,
   D2 => C5 ,
   VSS => VSS ,
   D3 => C4 ,
   B1 => B9 ,
   D4 => C3 ,
   D5 => C2 ,
   B2 => B8 ,
   D6 => C1 ,
   B3 => B7 ,
   D7 => C0
);

x65 : Thermo_Decoder
port map (
   D1 => R6 ,
   VDD => VDD ,
   D2 => R5 ,
   VSS => VSS ,
   D3 => R4 ,
   B1 => B12 ,
   D4 => R3 ,
   D5 => R2 ,
   B2 => B11 ,
   D6 => R1 ,
   B3 => B10 ,
   D7 => R0
);

M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   D => IM_T ,
   G => IM_T ,
   S => IM ,
   B => VSS
);

M2 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   D => IM ,
   G => IM ,
   S => VSS ,
   B => VSS
);

end arch_MSB_6Bit ;


-- expanding   symbol:  LSB.sym # of pins=12
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/LSB.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/LSB.sch
entity LSB is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  B1 : in std_logic ;
  B2 : in std_logic ;
  B3 : in std_logic ;
  B4 : in std_logic ;
  B5 : in std_logic ;
  B6 : in std_logic ;
  CLK : in std_logic ;
  ITAIL : in std_logic ;
  IOUT+ : out std_logic ;
  IOUT- : out std_logic
);
end LSB ;

architecture arch_LSB of LSB is

component Balanced_Inverter 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  VIN : in std_logic ;
  OUT_B : out std_logic ;
  OUT : out std_logic
);
end component ;

component CMLL 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  D : in std_logic ;
  D_B : in std_logic ;
  CLK : in std_logic ;
  CLKB : in std_logic ;
  Q : out std_logic ;
  Q_B : out std_logic
);
end component ;

component nfet_03V3_m2 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

component nfet_03V3_m4 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

component nfet_03V3_m8 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

component nfet_03V3_m16 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

component nfet_03V3_m32 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

component nfet_03V3_m64 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
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
signal b1 : std_logic ;
signal b2 : std_logic ;
signal b3 : std_logic ;
signal b4 : std_logic ;
signal b5 : std_logic ;
signal b6 : std_logic ;
signal clkb : std_logic ;
signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
signal net5 : std_logic ;
signal net6 : std_logic ;
signal net7 : std_logic ;
signal net8 : std_logic ;
signal net9 : std_logic ;
signal b1b : std_logic ;
signal b2b : std_logic ;
signal b3b : std_logic ;
signal b4b : std_logic ;
signal b5b : std_logic ;
signal b6b : std_logic ;
signal clk : std_logic ;
begin
x1 : Balanced_Inverter
port map (
   VDD => VDD ,
   VSS => VSS ,
   VIN => B1 ,
   OUT_B => b1b ,
   OUT => b1
);

x2 : Balanced_Inverter
port map (
   VDD => VDD ,
   VSS => VSS ,
   VIN => B2 ,
   OUT_B => b2b ,
   OUT => b2
);

x3 : Balanced_Inverter
port map (
   VDD => VDD ,
   VSS => VSS ,
   VIN => B3 ,
   OUT_B => b3b ,
   OUT => b3
);

x4 : Balanced_Inverter
port map (
   VDD => VDD ,
   VSS => VSS ,
   VIN => B4 ,
   OUT_B => b4b ,
   OUT => b4
);

x5 : Balanced_Inverter
port map (
   VDD => VDD ,
   VSS => VSS ,
   VIN => B5 ,
   OUT_B => b5b ,
   OUT => b5
);

x6 : Balanced_Inverter
port map (
   VDD => VDD ,
   VSS => VSS ,
   VIN => B6 ,
   OUT_B => b6b ,
   OUT => b6
);

x7 : Balanced_Inverter
port map (
   VDD => VDD ,
   VSS => VSS ,
   VIN => CLK ,
   OUT_B => clkb ,
   OUT => clk
);

M21 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.5e-07 ,
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
   D => IOUT+ ,
   G => net15 ,
   S => IOUT+ ,
   B => VSS
);

x9 : CMLL
port map (
   VDD => VDD ,
   VSS => VSS ,
   D => b5 ,
   D_B => b5b ,
   CLK => clk ,
   CLKB => clkb ,
   Q => net4 ,
   Q_B => net3
);

x10 : CMLL
port map (
   VDD => VDD ,
   VSS => VSS ,
   D => b4 ,
   D_B => b4b ,
   CLK => clk ,
   CLKB => clkb ,
   Q => net6 ,
   Q_B => net5
);

x11 : CMLL
port map (
   VDD => VDD ,
   VSS => VSS ,
   D => b3 ,
   D_B => b3b ,
   CLK => clk ,
   CLKB => clkb ,
   Q => net10 ,
   Q_B => net9
);

x12 : CMLL
port map (
   VDD => VDD ,
   VSS => VSS ,
   D => b2 ,
   D_B => b2b ,
   CLK => clk ,
   CLKB => clkb ,
   Q => net12 ,
   Q_B => net11
);

x13 : CMLL
port map (
   VDD => VDD ,
   VSS => VSS ,
   D => b1 ,
   D_B => b1b ,
   CLK => clk ,
   CLKB => clkb ,
   Q => net14 ,
   Q_B => net15
);

x14 : CMLL
port map (
   VDD => VDD ,
   VSS => VSS ,
   D => b6 ,
   D_B => b6b ,
   CLK => clk ,
   CLKB => clkb ,
   Q => net1 ,
   Q_B => net2
);

M23 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.5e-07 ,
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
   D => IOUT- ,
   G => net14 ,
   S => IOUT- ,
   B => VSS
);

x22 : nfet_03V3_m2
port map (
   S => net13 ,
   D => IOUT- ,
   B => VSS ,
   G => net15
);

x23 : nfet_03V3_m2
port map (
   S => net13 ,
   D => IOUT+ ,
   B => VSS ,
   G => net14
);

x24 : nfet_03V3_m2
port map (
   S => IOUT- ,
   D => IOUT- ,
   B => VSS ,
   G => net12
);

x25 : nfet_03V3_m2
port map (
   S => IOUT+ ,
   D => IOUT+ ,
   B => VSS ,
   G => net11
);

x26 : nfet_03V3_m4
port map (
   S => net17 ,
   D => IOUT- ,
   B => VSS ,
   G => net11
);

x27 : nfet_03V3_m4
port map (
   S => net17 ,
   D => IOUT+ ,
   B => VSS ,
   G => net12
);

x28 : nfet_03V3_m4
port map (
   S => IOUT- ,
   D => IOUT- ,
   B => VSS ,
   G => net10
);

x29 : nfet_03V3_m4
port map (
   S => IOUT+ ,
   D => IOUT+ ,
   B => VSS ,
   G => net9
);

x31 : nfet_03V3_m8
port map (
   S => net8 ,
   D => IOUT+ ,
   B => VSS ,
   G => net10
);

x32 : nfet_03V3_m8
port map (
   S => net8 ,
   D => IOUT- ,
   B => VSS ,
   G => net9
);

x33 : nfet_03V3_m8
port map (
   S => IOUT- ,
   D => IOUT- ,
   B => VSS ,
   G => net6
);

x34 : nfet_03V3_m8
port map (
   S => IOUT+ ,
   D => IOUT+ ,
   B => VSS ,
   G => net5
);

x35 : nfet_03V3_m16
port map (
   S => net7 ,
   D => IOUT- ,
   B => VSS ,
   G => net5
);

x36 : nfet_03V3_m16
port map (
   S => net7 ,
   D => IOUT+ ,
   B => VSS ,
   G => net6
);

x37 : nfet_03V3_m16
port map (
   S => IOUT- ,
   D => IOUT- ,
   B => VSS ,
   G => net4
);

x38 : nfet_03V3_m16
port map (
   S => IOUT+ ,
   D => IOUT+ ,
   B => VSS ,
   G => net3
);

x39 : nfet_03V3_m32
port map (
   S => net18 ,
   D => IOUT- ,
   B => VSS ,
   G => net3
);

x40 : nfet_03V3_m32
port map (
   S => net18 ,
   D => IOUT+ ,
   B => VSS ,
   G => net4
);

x41 : nfet_03V3_m32
port map (
   S => IOUT- ,
   D => IOUT- ,
   B => VSS ,
   G => net1
);

x42 : nfet_03V3_m32
port map (
   S => IOUT+ ,
   D => IOUT+ ,
   B => VSS ,
   G => net2
);

x43 : nfet_03V3_m64
port map (
   S => net19 ,
   D => IOUT- ,
   B => VSS ,
   G => net2
);

x44 : nfet_03V3_m64
port map (
   S => net19 ,
   D => IOUT+ ,
   B => VSS ,
   G => net1
);

x45 : nfet_03V3_m2
port map (
   S => net16 ,
   D => ITAIL ,
   B => VSS ,
   G => ITAIL
);

x46 : nfet_03V3_m2
port map (
   S => VSS ,
   D => net16 ,
   B => VSS ,
   G => net16
);

x47 : nfet_03V3_m2
port map (
   S => net20 ,
   D => net13 ,
   B => VSS ,
   G => ITAIL
);

x48 : nfet_03V3_m2
port map (
   S => VSS ,
   D => net20 ,
   B => VSS ,
   G => net16
);

x49 : nfet_03V3_m4
port map (
   S => net21 ,
   D => net17 ,
   B => VSS ,
   G => ITAIL
);

x50 : nfet_03V3_m4
port map (
   S => VSS ,
   D => net21 ,
   B => VSS ,
   G => net16
);

x51 : nfet_03V3_m8
port map (
   S => net22 ,
   D => net8 ,
   B => VSS ,
   G => ITAIL
);

x52 : nfet_03V3_m8
port map (
   S => VSS ,
   D => net22 ,
   B => VSS ,
   G => net16
);

x53 : nfet_03V3_m16
port map (
   S => net23 ,
   D => net7 ,
   B => VSS ,
   G => ITAIL
);

x54 : nfet_03V3_m16
port map (
   S => VSS ,
   D => net23 ,
   B => VSS ,
   G => net16
);

x55 : nfet_03V3_m32
port map (
   S => net24 ,
   D => net18 ,
   B => VSS ,
   G => ITAIL
);

x56 : nfet_03V3_m32
port map (
   S => VSS ,
   D => net24 ,
   B => VSS ,
   G => net16
);

x57 : nfet_03V3_m64
port map (
   S => net25 ,
   D => net19 ,
   B => VSS ,
   G => ITAIL
);

x58 : nfet_03V3_m64
port map (
   S => VSS ,
   D => net25 ,
   B => VSS ,
   G => net16
);

end arch_LSB ;


-- expanding   symbol:  MSB_UNIT_CELL.sym # of pins=9
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/MSB_UNIT_CELL.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/MSB_UNIT_CELL.sch
entity MSB_UNIT_CELL is
port (
  IOUT+ : out std_logic ;
  IOUT- : out std_logic ;
  VDD : inout std_logic ;
  Ri-1 : in std_logic ;
  Ri : in std_logic ;
  Ci : in std_logic ;
  IM_T : in std_logic ;
  IM : in std_logic ;
  VSS : inout std_logic
);
end MSB_UNIT_CELL ;

architecture arch_MSB_UNIT_CELL of MSB_UNIT_CELL is

component Local_Enc 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  Ri-1 : in std_logic ;
  Ri : in std_logic ;
  Ci : in std_logic ;
  Q : out std_logic ;
  QB : out std_logic
);
end component ;

component nfet_03V3_m128 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
signal net4 : std_logic ;
begin
x1 : Local_Enc
port map (
   VDD => VDD ,
   VSS => VSS ,
   Ri-1 => Ri-1 ,
   Ri => Ri ,
   Ci => Ci ,
   Q => net2 ,
   QB => net3
);

x2 : nfet_03V3_m128
port map (
   S => net1 ,
   D => IOUT+ ,
   B => VSS ,
   G => net2
);

x3 : nfet_03V3_m128
port map (
   S => net1 ,
   D => IOUT- ,
   B => VSS ,
   G => net3
);

x4 : nfet_03V3_m128
port map (
   S => net4 ,
   D => net1 ,
   B => VSS ,
   G => IM_T
);

x5 : nfet_03V3_m128
port map (
   S => VSS ,
   D => net4 ,
   B => VSS ,
   G => IM
);

end arch_MSB_UNIT_CELL ;


-- expanding   symbol:  Thermo_Decoder.sym # of pins=12
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/Thermo_Decoder.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/Thermo_Decoder.sch
entity Thermo_Decoder is
port (
  D1 : out std_logic ;
  VDD : inout std_logic ;
  D2 : out std_logic ;
  VSS : inout std_logic ;
  D3 : out std_logic ;
  B1 : in std_logic ;
  D4 : out std_logic ;
  D5 : out std_logic ;
  B2 : in std_logic ;
  D6 : out std_logic ;
  B3 : in std_logic ;
  D7 : out std_logic
);
end Thermo_Decoder ;

architecture arch_Thermo_Decoder of Thermo_Decoder is

component AND 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  A : in std_logic ;
  B : in std_logic ;
  OUT : out std_logic
);
end component ;

component inv 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic
);
end component ;

component OR 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  A : in std_logic ;
  B : in std_logic ;
  OUT : out std_logic
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
x1 : AND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => B1 ,
   B => B2 ,
   OUT => net1
);

x2 : inv
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN => net2 ,
   OUT => D1
);

x3 : OR
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => B1 ,
   B => B2 ,
   OUT => net6
);

x4 : OR
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => B2 ,
   B => B3 ,
   OUT => net4
);

x5 : AND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => B1 ,
   B => B2 ,
   OUT => net3
);

x6 : AND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net1 ,
   B => B3 ,
   OUT => net2
);

x7 : inv
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN => net3 ,
   OUT => D2
);

x8 : AND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net4 ,
   B => B1 ,
   OUT => net5
);

x9 : inv
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN => net5 ,
   OUT => D3
);

x10 : inv
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN => B1 ,
   OUT => D4
);

x11 : inv
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN => net6 ,
   OUT => D6
);

x12 : AND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => B2 ,
   B => B3 ,
   OUT => net9
);

x13 : OR
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => B1 ,
   B => net9 ,
   OUT => net10
);

x14 : inv
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN => net10 ,
   OUT => D5
);

x15 : OR
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => B1 ,
   B => B2 ,
   OUT => net7
);

x16 : OR
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net7 ,
   B => B3 ,
   OUT => net8
);

x17 : inv
port map (
   VDD => VDD ,
   VSS => VSS ,
   IN => net8 ,
   OUT => D7
);

end arch_Thermo_Decoder ;


-- expanding   symbol:  Balanced_Inverter.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/Balanced_Inverter.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/Balanced_Inverter.sch
entity Balanced_Inverter is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  VIN : in std_logic ;
  OUT_B : out std_logic ;
  OUT : out std_logic
);
end Balanced_Inverter ;

architecture arch_Balanced_Inverter of Balanced_Inverter is

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
   D => OUT_B ,
   G => VIN ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
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
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT_B ,
   G => OUT ,
   S => VDD ,
   B => VDD
);

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
   G => net1 ,
   S => VSS ,
   B => VSS
);

M4 : pfet_03v3
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
   model => pfet_03v3 ,
   spiceprefix => X
)
port map (
   D => OUT ,
   G => OUT_B ,
   S => VDD ,
   B => VDD
);

x1 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => net1 ,
   IN => VIN
);

end arch_Balanced_Inverter ;


-- expanding   symbol:  CMLL.sym # of pins=8
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/CMLL.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/CMLL.sch
entity CMLL is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  D : in std_logic ;
  D_B : in std_logic ;
  CLK : in std_logic ;
  CLKB : in std_logic ;
  Q : out std_logic ;
  Q_B : out std_logic
);
end CMLL ;

architecture arch_CMLL of CMLL is


signal net1 : std_logic ;
signal net2 : std_logic ;
signal net3 : std_logic ;
begin
M2 : nfet_03v3
generic map (
   L => 2.8e-07 ,
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
   D => Q ,
   G => D_B ,
   S => net1 ,
   B => VSS
);

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
   D => Q ,
   G => Q_B ,
   S => net2 ,
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
   D => Q_B ,
   G => Q ,
   S => net2 ,
   B => VSS
);

M5 : nfet_03v3
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
   D => net2 ,
   G => CLKB ,
   S => net3 ,
   B => VSS
);

M6 : nfet_03v3
generic map (
   L => 2.8e-07 ,
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
   D => Q_B ,
   G => D ,
   S => net1 ,
   B => VSS
);

R1 : res
generic map (
   value => 20000 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => VDD ,
   M => Q_B
);

R2 : res
generic map (
   value => 20000 ,
   footprint => 1206 ,
   device => resistor ,
   m => 1
)
port map (
   P => VDD ,
   M => Q
);

I0 : isource
generic map (
   value => 5.0e-05
)
port map (
   p => net3 ,
   m => VSS
);

M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
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
   D => net1 ,
   G => CLK ,
   S => net3 ,
   B => VSS
);

end arch_CMLL ;


-- expanding   symbol:  nfet_03V3_m2.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m2.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m2.sch
entity nfet_03V3_m2 is
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end nfet_03V3_m2 ;

architecture arch_nfet_03V3_m2 of nfet_03V3_m2 is

begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.5e-07 ,
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
   D => D ,
   G => G ,
   S => S ,
   B => B
);

M2 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.5e-07 ,
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
   D => D ,
   G => G ,
   S => S ,
   B => B
);

end arch_nfet_03V3_m2 ;


-- expanding   symbol:  nfet_03V3_m4.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m4.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m4.sch
entity nfet_03V3_m4 is
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end nfet_03V3_m4 ;

architecture arch_nfet_03V3_m4 of nfet_03V3_m4 is

component nfet_03V3_m2 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

begin
x1 : nfet_03V3_m2
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

x2 : nfet_03V3_m2
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

end arch_nfet_03V3_m4 ;


-- expanding   symbol:  nfet_03V3_m8.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m8.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m8.sch
entity nfet_03V3_m8 is
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end nfet_03V3_m8 ;

architecture arch_nfet_03V3_m8 of nfet_03V3_m8 is

component nfet_03V3_m4 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

begin
x1 : nfet_03V3_m4
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

x2 : nfet_03V3_m4
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

end arch_nfet_03V3_m8 ;


-- expanding   symbol:  nfet_03V3_m16.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m16.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m16.sch
entity nfet_03V3_m16 is
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end nfet_03V3_m16 ;

architecture arch_nfet_03V3_m16 of nfet_03V3_m16 is

component nfet_03V3_m8 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

begin
x1 : nfet_03V3_m8
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

x2 : nfet_03V3_m8
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

end arch_nfet_03V3_m16 ;


-- expanding   symbol:  nfet_03V3_m32.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m32.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m32.sch
entity nfet_03V3_m32 is
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end nfet_03V3_m32 ;

architecture arch_nfet_03V3_m32 of nfet_03V3_m32 is

component nfet_03V3_m16 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

begin
x1 : nfet_03V3_m16
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

x2 : nfet_03V3_m16
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

end arch_nfet_03V3_m32 ;


-- expanding   symbol:  nfet_03V3_m64.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m64.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m64.sch
entity nfet_03V3_m64 is
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end nfet_03V3_m64 ;

architecture arch_nfet_03V3_m64 of nfet_03V3_m64 is

component nfet_03V3_m32 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

begin
x1 : nfet_03V3_m32
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

x2 : nfet_03V3_m32
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

end arch_nfet_03V3_m64 ;


-- expanding   symbol:  Local_Enc.sym # of pins=7
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/Local_Enc.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/Local_Enc.sch
entity Local_Enc is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  Ri-1 : in std_logic ;
  Ri : in std_logic ;
  Ci : in std_logic ;
  Q : out std_logic ;
  QB : out std_logic
);
end Local_Enc ;

architecture arch_Local_Enc of Local_Enc is

component NAND 
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  A : in std_logic ;
  B : in std_logic ;
  OUT : out std_logic
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
x1 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => Ri-1 ,
   B => Ri-1 ,
   OUT => net5
);

x2 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => Ri ,
   B => Ri ,
   OUT => net6
);

x3 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => Ci ,
   B => Ci ,
   OUT => net7
);

x4 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net5 ,
   B => net5 ,
   OUT => net3
);

x5 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net6 ,
   B => net7 ,
   OUT => net4
);

x6 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net3 ,
   B => net4 ,
   OUT => net2
);

x7 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net2 ,
   B => net2 ,
   OUT => net1
);

x8 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => Q ,
   B => net1 ,
   OUT => QB
);

x9 : NAND
port map (
   VDD => VDD ,
   VSS => VSS ,
   A => net2 ,
   B => QB ,
   OUT => Q
);

end arch_Local_Enc ;


-- expanding   symbol:  nfet_03V3_m128.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m128.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/nfet_03V3_m128.sch
entity nfet_03V3_m128 is
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end nfet_03V3_m128 ;

architecture arch_nfet_03V3_m128 of nfet_03V3_m128 is

component nfet_03V3_m64 
port (
  S : inout std_logic ;
  D : inout std_logic ;
  B : inout std_logic ;
  G : inout std_logic
);
end component ;

begin
x1 : nfet_03V3_m64
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

x2 : nfet_03V3_m64
port map (
   S => S ,
   D => D ,
   B => B ,
   G => G
);

end arch_nfet_03V3_m128 ;


-- expanding   symbol:  AND.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/AND.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/AND.sch
entity AND is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  A : in std_logic ;
  B : in std_logic ;
  OUT : out std_logic
);
end AND ;

architecture arch_AND of AND is

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
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => B ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => A ,
   S => VDD ,
   B => VDD
);

M3 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => B ,
   S => VDD ,
   B => VDD
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => A ,
   S => net2 ,
   B => VSS
);

x1 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

end arch_AND ;


-- expanding   symbol:  inv.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/inv.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/inv.sch
entity inv is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic
);
end inv ;

architecture arch_inv of inv is

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
   OUT => net1 ,
   IN => IN
);

x2 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

end arch_inv ;


-- expanding   symbol:  OR.sym # of pins=5
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/OR.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/OR.sch
entity OR is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  A : in std_logic ;
  B : in std_logic ;
  OUT : out std_logic
);
end OR ;

architecture arch_OR of OR is

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
x1 : GF_INV
port map (
   VSS => VSS ,
   VDD => VDD ,
   OUT => OUT ,
   IN => net1
);

M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.5e-07 ,
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
   G => B ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
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
   G => A ,
   S => VDD ,
   B => VDD
);

M5 : pfet_03v3
generic map (
   L => 2.8e-07 ,
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
   D => net1 ,
   G => B ,
   S => net2 ,
   B => VDD
);

M6 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 2.5e-07 ,
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
   G => A ,
   S => VSS ,
   B => VSS
);

end arch_OR ;


-- expanding   symbol:  GF_INV.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/GF_INV.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/GF_INV.sch
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
   W => 2.5e-07 ,
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
   W => 5.0e-07 ,
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
-- sym_path: /home/shahid/GF180Projects/GF_INV/Xschem/NAND.sym
-- sch_path: /home/shahid/GF180Projects/GF_INV/Xschem/NAND.sch
entity NAND is
port (
  VDD : inout std_logic ;
  VSS : inout std_logic ;
  A : in std_logic ;
  B : in std_logic ;
  OUT : out std_logic
);
end NAND ;

architecture arch_NAND of NAND is


signal net1 : std_logic ;
begin
M1 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => B ,
   S => VSS ,
   B => VSS
);

M2 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => A ,
   S => VDD ,
   B => VDD
);

M3 : pfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => B ,
   S => VDD ,
   B => VDD
);

M4 : nfet_03v3
generic map (
   L => 2.8e-07 ,
   W => 5.0e-07 ,
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
   G => A ,
   S => net1 ,
   B => VSS
);

end arch_NAND ;

