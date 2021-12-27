--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:26:48 12/27/2021
-- Design Name:   
-- Module Name:   /home/ise/working/Gates/Gates_tb.vhd
-- Project Name:  Gates
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Gate_St
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Gates_tb IS
END Gates_tb;
 
ARCHITECTURE behavior OF Gates_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Gate_St
    PORT(
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         in3 : IN  std_logic;
         out0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic := '0';
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '0';

 	--Outputs
   signal out0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Gate_St PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          out0 => out0
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		-- Cumulative time
		in0 <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
		in1 <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns;
		in2 <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
		in3 <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns;
   end process;

END;
