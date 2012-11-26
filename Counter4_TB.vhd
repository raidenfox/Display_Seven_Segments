--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:41 11/24/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/Dropbox/ASE/Esercizi Svolti/SetteSegmenti/Counter4_TB.vhd
-- Project Name:  SetteSegmenti
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter4
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
 
ENTITY Counter4_TB IS
END Counter4_TB;
 
ARCHITECTURE behavior OF Counter4_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter4
    PORT(
         clock_in : IN  std_logic;
         en : IN  std_logic;
         reset : IN  std_logic;
         counter_val : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock_in : std_logic := '0';
   signal en : std_logic := '1';
   signal reset : std_logic := '0';

 	--Outputs
   signal counter_val : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clock_in_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter4 PORT MAP (
          clock_in => clock_in,
          en => en,
          reset => reset,
          counter_val => counter_val
        );

   -- Clock process definitions
   clock_in_process :process
   begin
		clock_in <= '0';
		wait for clock_in_period/2;
		clock_in <= '1';
		wait for clock_in_period/2;
   end process;


END;
