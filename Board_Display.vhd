----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:59 11/25/2012 
-- Design Name: 
-- Module Name:    Board_Display - Behavioral 
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

entity Board_Display is
    --GENERIC(freq_in : Integer := 50000000;
		--		freq_out : Integer := 400);
    Port ( byte_i : in  STD_LOGIC_VECTOR (7 downto 0);
           MSB : in  STD_LOGIC;
           LSB : in  STD_LOGIC;
           DOTS : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end Board_Display;

architecture Behavioral of Board_Display is
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
	 
	 COMPONENT Display7
    GENERIC(freq_in : Integer := 50000000;
				freq_out : Integer := 5000000);
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
	 
signal rst_n : STD_LOGIC ;
signal val_out : std_logic_vector(15 downto 0);
signal d_out : std_logic_vector(3 downto 0);
signal e_out : std_logic_vector(3 downto 0);
signal anodi : std_logic_vector(3 downto 0);
signal catodi : std_logic_vector(7 downto 0);
begin

rst_n <= not reset;
anodes <= anodi;
cathodes <= catodi;
CONN1: ControlUnit port map(clk,rst_n,MSB,LSB,DOTS,val_out,byte_i,d_out,e_out);
CONN2: Display7 GENERIC MAP(50000000,400) port map(clk,rst_n,e_out,d_out,val_out,anodi,catodi);

end Behavioral;

