--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:05:15 11/25/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/Dropbox/ASE/Esercizi Svolti/SetteSegmenti/Board_Display_TB.vhd
-- Project Name:  SetteSegmenti
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Board_Display
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
 
ENTITY Board_Display_TB IS
END Board_Display_TB;
 
ARCHITECTURE behavior OF Board_Display_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Board_Display
    PORT(
         byte_i : IN  std_logic_vector(7 downto 0);
         MSB : IN  std_logic;
         LSB : IN  std_logic;
         DOTS : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal byte_i : std_logic_vector(7 downto 0) := "10000011";
   signal MSB : std_logic := '1';
   signal LSB : std_logic := '0';
   signal DOTS : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Board_Display PORT MAP (
          byte_i => byte_i,
          MSB => MSB,
          LSB => LSB,
          DOTS => DOTS,
          reset => reset,
          clk => clk,
          anodes => anodes,
          cathodes => cathodes
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;


END;
