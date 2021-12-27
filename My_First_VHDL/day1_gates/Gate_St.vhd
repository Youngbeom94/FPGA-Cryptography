library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gate_St is

	port (in0, in1, in2, in3 : in STD_LOGIC;
			out0 : out STD_LOGIC);

end Gate_St;

-- vhdl --> WAVEFORM
-- for structure, we need to declare component and signal
architecture Behavioral of Gate_St is

-- component : define
-- all component's gates are in same location
	component and_gate
		port ( a, b : in STD_LOGIC;
			c : out STD_LOGIC);
	end component;
	
	component or_gate
		port ( d : in  STD_LOGIC;
          e : in  STD_LOGIC;
          f : out  STD_LOGIC);
	end component;	
	
	component xor_gate
		port( x,y : in STD_LOGIC;
			z : out STD_LOGIC);
	end component;	
	
--signal : connenction
--	signal s1, s2 : STD_LOGIC := '0' -- '1';
	signal s1, s2 : STD_LOGIC;
	
begin
	and_gate_c : and_gate port map (in0, in1, s1);
	or_gate_c : or_gate port map (in2, in3, s2);
	xor_gate_c : xor_gate port map (s1, s2, out0);
	
end Behavioral;