----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:14 08/04/2018 
-- Design Name: 
-- Module Name:    Memory_ROM - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory_ROM is
    Port ( ADDR : in  STD_LOGIC_VECTOR (2 downto 0);
           Data : out  STD_LOGIC_VECTOR (7 downto 0));
end Memory_ROM;

architecture Behavioral of Memory_ROM is

Constant data0 : STD_LOGIC_VECTOR (7 downto 0) := X"85";
Constant data1 : STD_LOGIC_VECTOR (7 downto 0) := X"C4";
Constant data2 : STD_LOGIC_VECTOR (7 downto 0) := X"E6";
Constant data3 : STD_LOGIC_VECTOR (7 downto 0) := X"55";
Constant data4 : STD_LOGIC_VECTOR (7 downto 0) := X"67";
Constant data5 : STD_LOGIC_VECTOR (7 downto 0) := X"D4";
Constant data6 : STD_LOGIC_VECTOR (7 downto 0) := X"F4";
Constant data7 : STD_LOGIC_VECTOR (7 downto 0) := X"C6";

type rom_array is array (natural range <>) of STD_LOGIC_VECTOR (7 downto 0);
constant rom : rom_array := (data0,data1,data2,data3,data4,data5,data6,data7);

begin

process (ADDR)
variable j: integer;
begin
j := conv_integer(ADDR);
Data <= rom(j);
end process;

end Behavioral;

