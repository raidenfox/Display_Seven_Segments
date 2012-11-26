--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:37:45 11/24/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/Dropbox/ASE/Esercizi Svolti/SetteSegmenti/GestoreAnodi_TB.vhd
-- Project Name:  SetteSegmenti
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GestoreAnodi
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
 
ENTITY GestoreAnodi_TB IS
END GestoreAnodi_TB;
 
ARCHITECTURE behavior OF GestoreAnodi_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GestoreAnodi
    PORT(
         counter4out : IN  std_logic_vector(1 downto 0);
         enabledigit : IN  std_logic_vector(3 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal counter4out : std_logic_vector(1 downto 0) := "01";
   signal enabledigit : std_logic_vector(3 downto 0) := "0010";

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GestoreAnodi PORT MAP (
          counter4out => counter4out,
          enabledigit => enabledigit,
          anodes => anodes
        );

END;
