----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:34:02 08/07/2018 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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

entity fsm is
    Port ( inp : in  STD_LOGIC;
           outp : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end fsm;

architecture Behavioral of fsm is

type state_type is (s0,s1,s2,s3);
signal state : state_type ;

begin

process (clk,inp)
begin
if (rising_edge(clk)) then

case state is 

when s0 =>
	if inp='1' then
	state <= s1;
	outp <= '0';
	else
	state <= s0;
	outp <= '0';
	end if;
when s1 =>
	if inp='1' then
	state <= s3;
	outp <= '0';
	else
	state <= s0;
	outp <= '1';
	end if;
when s2 =>
	if inp='1' then
	state <= s2;
	outp <= '0';
	else
	state <= s0;
	outp <= '1';
	end if;
when s3 =>
	if inp='1' then
	state <= s2;
	outp <= '0';
	else
	state <= s0;
	outp <= '1';
	end if;

end case;
end if;

end process;
end Behavioral;

