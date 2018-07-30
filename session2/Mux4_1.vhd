----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:44 07/30/2018 
-- Design Name: 
-- Module Name:    Mux4_1 - Behavioral 
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

entity Mux4_1 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Z : out  STD_LOGIC);
end Mux4_1;

architecture Behavioral of Mux4_1 is

begin

process (s,A)
begin

case s is
when "00" => Z <= A(0);
when "01" => Z <= A(1);
when "10" => Z <= A(2);
when "11" => Z <= A(3);
when others => z <= '0';
end case;
end process;


-- z <= A(0) when s = "00" else
--	  A(1) when s = "01" else
--	  A(2) when s = "10" else
--	  A(3);

end Behavioral;

