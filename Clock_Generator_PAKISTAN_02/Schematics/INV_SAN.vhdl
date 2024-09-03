-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/INV_SAN.sch
entity INV_SAN is
end INV_SAN ;

architecture arch_INV_SAN of INV_SAN is

component inv_my 
port (
  VSS : inout std_logic ;
  IN : in std_logic ;
  OUT : out std_logic ;
  VDD : inout std_logic
);
end component ;


signal OUT : std_logic ;
signal VDD : std_logic ;
signal VSS : std_logic ;
signal IN : std_logic ;
signal GND : std_logic ;
begin
C1 : capa
generic map (
   m => 1 ,
   value => 5.0e-14 ,
   footprint => 1206 ,
   device => ceramic capacitor
)
port map (
   p => OUT ,
   m => VSS
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

V3 : vsource
generic map (
   value => pulse(0 3.3 0 100p 100p 100n 200n)
)
port map (
   p => IN ,
   m => VSS
);

x2 : inv_my
port map (
   VSS => VSS ,
   IN => IN ,
   OUT => OUT ,
   VDD => VDD
);


.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical



.control
save all
dc v3 0 3.3 0.1
plot v(IN) v(OUT)

tran 10p 1u 
plot v(IN) v(OUT)
*write test_nfet_03v3.raw
.endc

end arch_INV_SAN ;


-- expanding   symbol:  inv_my.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/Divider/Xschem/inv_my.sym
-- sch_path: /home/shahid/GF180Projects/Divider/Xschem/inv_my.sch
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

