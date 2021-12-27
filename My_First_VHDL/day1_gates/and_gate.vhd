-- VHDL's Strucutre
-- blue one is reservation instruction
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

--setting in_out port
--entity name is must be same "and_gate.vhd" and behavioral of "and_gate"
--what is top module --> three square --> it is main function of C
entity and_gate is
	port (a, b : in STD_LOGIC;
			c : out STD_LOGIC);
end and_gate;

-- setting working
-- what is datalow? --> like Water
architecture dataflow of and_gate is
begin
	c <= a and b;
end dataflow;

