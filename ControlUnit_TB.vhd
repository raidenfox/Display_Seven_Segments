--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:24:29 11/25/2012
-- Design Name:   
-- Module Name:   C:/Users/Tony Stark/Dropbox/ASE/Esercizi Svolti/SetteSegmenti/ControlUnit_TB.vhd
-- Project Name:  SetteSegmenti
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
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
 
ENTITY ControlUnit_TB IS
END ControlUnit_TB;
 
ARCHITECTURE behavior OF ControlUnit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         MSB_in : IN  std_logic;
         LSB_in : IN  std_logic;
         DOTS_in : IN  std_logic;
         value : OUT  std_logic_vector(15 downto 0);
         byte_in : IN  std_logic_vector(7 downto 0);
         dots : OUT  std_logic_vector(3 downto 0);
         en : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '1';
   signal MSB_in : std_logic := '1';
   signal LSB_in : std_logic := '0';
   signal DOTS_in : std_logic := '1';
   signal byte_in : std_logic_vector(7 downto 0) := "11111001";

 	--Outputs
   signal value : std_logic_vector(15 downto 0);
   signal dots : std_logic_vector(3 downto 0);
   signal en : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          clock => clock,
          reset => reset,
          MSB_in => MSB_in,
          LSB_in => LSB_in,
          DOTS_in => DOTS_in,
          value => value,
          byte_in => byte_in,
          dots => dots,
          en => en
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
