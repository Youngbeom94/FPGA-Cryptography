library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is

	port(x,y : in STD_LOGIC;
			z : out STD_LOGIC);
end xor_gate;

architecture Dataflow of xor_gate is

begin

	z <= x xor y;
	
end Dataflow;

