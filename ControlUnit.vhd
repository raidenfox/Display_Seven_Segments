----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:02 11/25/2012 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           MSB_in : in  STD_LOGIC;
           LSB_in : in  STD_LOGIC;
           DOTS_in : in  STD_LOGIC;
           value : out  STD_LOGIC_VECTOR (15 downto 0);
           byte_in : in  STD_LOGIC_VECTOR (7 downto 0);
           dots : out  STD_LOGIC_VECTOR (3 downto 0);
           en : out  STD_LOGIC_VECTOR (3 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is

signal not_reset : STD_LOGIC := '0' ;
signal value_out : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
signal dots_out : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal en_out : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
begin

not_reset <= not reset; 


CUPROCESS:PROCESS(clock,not_reset,MSB_in,LSB_in,DOTS_in)
begin

	if not_reset = '1' then
		value_out <= (others => '0');
		dots_out <= (others => '0');
		en_out <= (others => '0');
	elsif rising_edge(clock) then
		if MSB_in = '1' then
		value_out(15 downto 8) <= byte_in;
		elsif LSB_in = '1' then
		value_out(7 downto 0) <= byte_in;
		end if;
		if DOTS_in = '1' then
		dots_out <= byte_in(7 downto 4);
		en_out <= byte_in(3 downto 0);
		end if;
	end if;
END PROCESS;

value <= value_out;
dots <= dots_out;
en <= en_out;

end Behavioral;

