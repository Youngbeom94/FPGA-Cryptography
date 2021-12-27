library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port (d : in  STD_LOGIC;
          e : in  STD_LOGIC;
          f : out  STD_LOGIC);
end or_gate;

-- Behavioral process is to explain working using process syntax
-- process syntax is awalys perform, pls compare if or for
-- () or process is important parmeters
-- process working sequential
-- here "and" is reservation
-- consider "and" is operator or reservation

architecture Behavioral of or_gate is	
begin

	process (d, e)
	begin
	
		if d = '1' or e = '1' then
			f <= '0';
		else f<= '1';
		end if;
		
	end process;

end Behavioral;

