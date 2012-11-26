----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:08 11/22/2012 
-- Design Name: 
-- Module Name:    ClockDivider - Behavioral 
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

entity ClockDivider is
    GENERIC(freq_in : Integer := 50000000;
				freq_out : Integer := 5000000);
    Port ( clock_in : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clock_out : out  STD_LOGIC);
end ClockDivider;

architecture Behavioral of ClockDivider is
constant div : Integer := freq_in/freq_out -1;
signal value,not_reset : STD_LOGIC := '0';
signal counter : Integer := 0;
begin

not_reset <= not reset;
clock_out <= value;

CC: PROCESS(clock_in, not_reset)
begin
if (rising_edge(clock_in) and not_reset = '1') then counter <= counter +1;
	if counter = div then
		value <= not value;
		counter <= 0;
	end if;
end if;

END PROCESS;


end Behavioral;

