----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:35:41 07/28/2018 
-- Design Name: 
-- Module Name:    mux2-1 - Behavioral 
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

entity mux2_1 is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end mux2_1;

architecture Behavioral of mux2_1 is

begin

c1: process (s, A0 ,A1)
begin
if s = '0' then
Z <= A0;
else 
Z <= A1;
end if;


--Z <= A0 when s = '0' else A1;

end process c1;

end Behavioral;

