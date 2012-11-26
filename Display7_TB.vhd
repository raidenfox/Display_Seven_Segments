--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:19:19 11/24/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/Dropbox/ASE/Esercizi Svolti/SetteSegmenti/Display7_TB.vhd
-- Project Name:  SetteSegmenti
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Display7
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
 
ENTITY Display7_TB IS
END Display7_TB;
 
ARCHITECTURE behavior OF Display7_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Display7
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         enabledgt : IN  std_logic_vector(3 downto 0);
         dots_in : IN  std_logic_vector(3 downto 0);
         valuetodisplay : IN  std_logic_vector(15 downto 0);
         anodi : OUT  std_logic_vector(3 downto 0);
         catodi : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal enabledgt : std_logic_vector(3 downto 0) := "0010";
   signal dots_in : std_logic_vector(3 downto 0) := "0010";
   signal valuetodisplay : std_logic_vector(15 downto 0) := "0000101000110000";

 	--Outputs
   signal anodi : std_logic_vector(3 downto 0);
   signal catodi : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Display7 PORT MAP (
          clock => clock,
          reset => reset,
          enabledgt => enabledgt,
          dots_in => dots_in,
          valuetodisplay => valuetodisplay,
          anodi => anodi,
          catodi => catodi
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 


END;
