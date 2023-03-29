library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_unsigned.ALL;

 

entity COUNTER is

Port ( clk: in  STD_LOGIC;

output : out  STD_LOGIC_VECTOR (2 downto 0));

end COUNTER;

 

architecture PROGRAM of COUNTER is

signal count : std_logic_vector (2 downto 0) := "000";

begin

process(clk)

begin

if (clk'event and clk = '1') then

count <= count + 1;

end if;

if count = "111" then count <= "000";

end if;

end process;

     

output <= count;

end PROGRAM;
