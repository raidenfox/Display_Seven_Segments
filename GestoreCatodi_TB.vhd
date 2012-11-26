--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:00:31 11/24/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/Dropbox/ASE/Esercizi Svolti/SetteSegmenti/GestoreCatodi_TB.vhd
-- Project Name:  SetteSegmenti
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GestoreCatodi
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
 
ENTITY GestoreCatodi_TB IS
END GestoreCatodi_TB;
 
ARCHITECTURE behavior OF GestoreCatodi_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GestoreCatodi
    PORT(
         counter4 : IN  std_logic_vector(1 downto 0);
         dots : IN  std_logic_vector(3 downto 0);
         valoredisplay : IN  std_logic_vector(15 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal counter4 : std_logic_vector(1 downto 0) := "01";
   signal dots : std_logic_vector(3 downto 0) := "0010";
   signal valoredisplay : std_logic_vector(15 downto 0) := "0000100000010101";

 	--Outputs
   signal cathodes : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GestoreCatodi PORT MAP (
          counter4 => counter4,
          dots => dots,
          valoredisplay => valoredisplay,
          cathodes => cathodes
        );

 


END;
