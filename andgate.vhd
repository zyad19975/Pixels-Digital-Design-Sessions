----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:58 07/28/2018 
-- Design Name: 
-- Module Name:    andgate - Behavioral 
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

entity gates is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Z1 , Z2 ,Z3 ,Z4: out  STD_LOGIC);
end gates;

architecture Behavioral of gates is

begin

Z1 <= A and B;
Z2 <= A OR B;
Z3 <= Not(A);
Z4 <= A NAND B;

end Behavioral;

