-- sch_path: /home/shahid/GF180Projects/AHMAR/inverter_tb.sch
entity inverter_tb is
end inverter_tb ;

architecture arch_inverter_tb of inverter_tb is

component inverter 
port (
  VDD : inout std_logic ;
  VIN : in std_logic ;
  VOUT : out std_logic ;
  VSS : inout std_logic
);
end component ;


signal net1 : std_logic ;
signal net2 : std_logic ;
signal VOUT : std_logic ;
signal GND : std_logic ;
begin
x1 : inverter
port map (
   VDD => net2 ,
   VIN => net1 ,
   VOUT => VOUT ,
   VSS => GND
);

V1 : vsource
generic map (
   value => 3
)
port map (
   p => net2 ,
   m => GND
);

V2 : vsource
generic map (
   value => PULSE(0 3 0p 10p 10p 5n 10n)
)
port map (
   p => net1 ,
   m => GND
);


.control
.trans 1n 40n
.save all
plot VOUT

end arch_inverter_tb ;


-- expanding   symbol:  inverter.sym # of pins=4
-- sym_path: /home/shahid/GF180Projects/AHMAR/inverter.sym
-- sch_path: /home/shahid/GF180Projects/AHMAR/inverter.sch
entity inverter is
port (
  VDD : inout std_logic ;
  VIN : in std_logic ;
  VOUT : out std_logic ;
  VSS : inout std_logic
);
end inverter ;

architecture arch_inverter of inverter is

begin
X19 : nmos3
generic map (
   model => irf540 ,
   m => 1
)
port map (
   d => VOUT ,
   g => VIN ,
   s => VSS
);

X24 : pmos3
generic map (
   model => irf5305
)
port map (
   d => VOUT ,
   g => VIN ,
   s => VDD
);

end arch_inverter ;

